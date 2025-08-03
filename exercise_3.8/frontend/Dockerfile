FROM node:16.20.2-alpine3.18 AS build-stage

WORKDIR /usr/src/app
COPY package.json package-lock.json ./
COPY /src ./src
COPY /public ./public

RUN npm ci && REACT_APP_BACKEND_URL=http://localhost npm run build

FROM node:16.20.2-alpine3.18

EXPOSE 5000

WORKDIR /usr/src/app

COPY --from=build-stage /usr/src/app/build /usr/src/app/build

RUN npm install -g serve && adduser appuser -D && chown appuser . && rm -rf /var/lib/apt/lists/*

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]

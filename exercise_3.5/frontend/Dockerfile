FROM node:16.20.2

EXPOSE 5000

WORKDIR /usr/src/app
COPY package.json package-lock.json ./
COPY /src ./src
COPY /public ./public

RUN ls -r
RUN npm ci
RUN npm install -g serve
RUN ls
RUN REACT_APP_BACKEND_URL=http://localhost npm run build

RUN useradd -m appuser

RUN chown appuser .

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]

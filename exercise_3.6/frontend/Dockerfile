FROM node:16.20.2

EXPOSE 5000

WORKDIR /usr/src/app
COPY package.json package-lock.json ./
COPY /src ./src
COPY /public ./public

RUN npm ci && npm install -g serve && REACT_APP_BACKEND_URL=http://localhost npm run build \
    && useradd -m appuser && chown appuser . && rm -rf /var/lib/apt/lists/*

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]

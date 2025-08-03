FROM golang:1.25rc2-alpine

EXPOSE 8080

WORKDIR /usr/src/app

ENV PORT=8080 REQUEST_ORIGIN=http://localhost

COPY . .

RUN go build && go test ./... && adduser appuser -D && chown appuser . && rm -rf /var/lib/apt/lists/*

USER appuser

CMD [ "./server" ] 
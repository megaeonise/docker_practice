FROM golang:1.25rc2-bullseye

EXPOSE 8080

WORKDIR /usr/src/app

ENV PORT=8080 REQUEST_ORIGIN=http://localhost

COPY . .

RUN go build
RUN go test ./...

RUN adduser appuser

RUN chown appuser .

USER appuser

CMD [ "./server" ] 
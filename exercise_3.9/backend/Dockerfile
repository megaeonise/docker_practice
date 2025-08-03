FROM golang:1.25rc2-alpine AS build-stage

WORKDIR /usr/src/app

ENV PORT=8080 REQUEST_ORIGIN=http://localhost

COPY . .

RUN go build && go test ./...

FROM scratch

EXPOSE 8080

WORKDIR /usr/src/app

COPY --from=build-stage /usr/src/app/server /usr/src/app/server

CMD [ "./server" ] 

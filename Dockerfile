FROM golang:1.15-alpine as builder

WORKDIR /app
COPY ./main.go .
RUN GOOS=linux go build -ldflags="-s -w"

FROM scratch
WORKDIR /app
COPY --from=builder  /app .
ENTRYPOINT [ "./app" ]
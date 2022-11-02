FROM golang:1.16-alpine

WORKDIR /app

COPY ./* ./

RUN go mod download

RUN go build -o /test

EXPOSE 3000

CMD [ "/test" ]
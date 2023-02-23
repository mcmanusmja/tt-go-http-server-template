FROM golang:alpine as build-env
LABEL version="1.0"
LABEL description="TimelessToday APP for TT 2.0"
LABEL maintainer="email@example.com"
RUN apk add build-base
ENV GO119MODULE=on

WORKDIR /app
ADD . /app
RUN cd /app && go build -o=APPNAME cmd/main.go
#add the configurations files

#
FROM alpine
RUN apk update && apk add ca-certificates && rm -rf /var/cache/apk/*
WORKDIR /app
COPY --from=build-env /app/APPNAME /app
#
#EXPOSE 8080 
ENTRYPOINT ["./APP-EXECUTABLE"]
CMD ["./APPNAME", "-e=production"]

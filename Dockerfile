FROM certbot/certbot:latest

RUN apk update ; apk add --update bash jq curl

COPY ./entrypoint ./entrypoint
ENTRYPOINT ["./entrypoint"]
FROM alpine:3.12.0
RUN apk add --update git find
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]


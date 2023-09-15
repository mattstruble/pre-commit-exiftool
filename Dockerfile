FROM alpine


WORKDIR /

RUN apk update && apk add --no-cache \
        exiftool \
    && rm -rf /var/cache/apk/*


ENTRYPOINT ["/bin/sh"]
CMD ["-c", "exiftool"]

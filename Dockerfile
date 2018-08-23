## NoVNC for SeleniumHQ
FROM dougw/novnc:latest
LABEL maintainer="Francesco Bianco <info@javanile.org>"

## Running
COPY foreground.sh /usr/local/bin/
CMD ["foreground.sh"]

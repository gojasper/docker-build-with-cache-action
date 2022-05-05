FROM docker:20.10.3

LABEL "maintainer"="Jasper AI Platform Team <platform@jasper.ai>"
LABEL "repository"="https://github.com/gojasper/docker-build-with-cache-action"

COPY docker-build.sh /docker-build.sh
COPY entrypoint.sh /entrypoint.sh

RUN apk add --no-cache bash grep jq

ENTRYPOINT ["/entrypoint.sh"]

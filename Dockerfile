FROM docker:stable

LABEL 'name'='Docker Deployment Action'
LABEL 'maintainer'='Al-waleed Shihadeh <wshihadeh.dev@gmail.com>'

LABEL 'com.github.actions.name'='Docker Deployment'
LABEL 'com.github.actions.description'='supports docker-compose and Docker Swarm deployments'
LABEL 'com.github.actions.icon'='send'
LABEL 'com.github.actions.color'='green'

RUN apk --no-cache add openssh-client docker-compose

RUN echo "before entrypoint"
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN echo "somesome"

ENTRYPOINT ["/docker-entrypoint.sh"]

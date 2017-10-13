#Start from image below - minimal slackware 14.2 setup
FROM vbatts/slackware-base

RUN mkdir -p /opt/apps

COPY slack64-dev-template.template /etc/slackpkg/templates/

COPY mirrors /etc/slackpkg/mirrors

RUN slackpkg update

RUN slackpkg install-template slack64-dev-template

RUN slackpkg clean-system

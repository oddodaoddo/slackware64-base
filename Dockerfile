#Start from image below - minimal slackware 14.2 setup
FROM vbatts/slackware-base

#RUN mkdir -p /opt/apps

COPY slack64-dev-template.template /etc/slackpkg/templates/

COPY mirrors /etc/slackpkg/mirrors

RUN slackpkg update && slackpkg install-template slack64-dev-template && slackpkg clean-system && cp /usr/lib/libunistring.so /usr/lib/libunistring.so.2

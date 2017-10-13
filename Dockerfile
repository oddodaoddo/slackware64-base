#Start from image below - minimal slackware 14.2 setup
FROM vbatts/slackware-base

ENV FTP_HOME ftp://ftp.ussg.indiana.edu/linux/slackware/slackware64-14.2/slackware64

RUN mkdir -p /opt/slack/packages

COPY slack64-dev-template.template /etc/slackpkg/templates/

RUN slackpkg install-template slack64-dev-template

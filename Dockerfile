#Start from image below - minimal slackware 14.2 setup
FROM vbatts/slackware-base

ENV FTP_HOME ftp://ftp.ussg.indiana.edu/linux/slackware/slackware64-14.2/slackware64

RUN mkdir -p /opt/slack/packages

COPY FILE_LIST_TRIMMED /opt/slack/packages/

RUN for i in `cat /opt/slack/packages/FILE_LIST_TRIMMED`; do wget $FTP_HOME/$i; done

RUN for i in *.txz; do installpkg $i; done

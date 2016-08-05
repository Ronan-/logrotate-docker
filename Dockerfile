FROM alpine
MAINTAINER dev@axs.com

RUN apk --update add logrotate xz
RUN echo "*/5 *	* * *	/usr/sbin/logrotate /etc/logrotate.conf" >> /etc/crontabs/root

CMD ["crond", "-f"]

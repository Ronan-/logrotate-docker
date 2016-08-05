FROM alpine
MAINTAINER dev@axs.com

RUN apk --update add --no-cache logrotate xz
RUN echo "*/5 *	* * *	/usr/sbin/logrotate /etc/logrotate.conf" >> /etc/crontabs/root

CMD ["crond", "-f"]

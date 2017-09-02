FROM ubuntu:16.04

MAINTAINER sergey.batanov@dmpas.ru

RUN apt-get update && apt-get install -y \
# deb-package tools
		dpkg\
		debconf\
		debhelper\
		lintian\
		md5deep\
		fakeroot \
		locales

# чтобы запустить тесты
RUN locale-gen --lang ru_RU.UTF-8
ENV LANG ru_RU.UTF-8

COPY ./ /opt/deb/

ENTRYPOINT /opt/deb/build.sh

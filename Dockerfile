FROM centos:8
LABEL maintainer="is:-D Networks Docker Maintainers <jhcheong@isdnetworks.pe.kr>"

RUN dnf install -y epel-release \
 && dnf install -y glibc-locale-source glibc-langpack-ko GeoIP-GeoLite-data-extra \
 && dnf clean all \
 && rm -rf /var/cache/dnf \
 && localedef -f UTF-8 -i ko_KR ko_KR.UTF-8 \
 && ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

ENV LANG ko_KR.UTF-8
ENV LC_ALL ko_KR.UTF-8
ENV TZ Asia/Seoul


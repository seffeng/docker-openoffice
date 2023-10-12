FROM seffeng/debian:11

ENV BASE_PACKAGE="wget"\
 EXTEND="libxext-dev libfreetype-dev openjdk-11-jdk fontconfig fonts-wqy-zenhei fonts-wqy-microhei fonts-arphic-ukai fonts-arphic-uming"\
 OPENOFFICE_NAME="Apache_OpenOffice_4.1.14_Linux_x86-64_install-deb_zh-CN.tar.gz"\
 OPENOFFICE_FILE="openoffice4.1-debian-menus_4.1.14-9811_all.deb"

ENV OPENOFFICE_URL="https://zenlayer.dl.sourceforge.net/project/openofficeorg.mirror/4.1.14/binaries/zh-CN/Apache_OpenOffice_4.1.14_Linux_x86-64_install-deb_zh-CN.tar.gz"

WORKDIR /tmp

COPY run.sh ./

RUN apt update && apt install -y ${BASE_PACKAGE} ${EXTEND} &&\
 wget ${OPENOFFICE_URL} &&\
 tar -zxf ${OPENOFFICE_NAME} &&\
 cd zh-CN/DEBS &&\
 dpkg -i *.deb &&\
 cd desktop-integration && dpkg -i ${OPENOFFICE_FILE} &&\
 cd /tmp && cp run.sh /usr/local/bin/run.sh &&\
 chmod +x /usr/local/bin/run.sh &&\
 apt remove -y ${BASE_PACKAGE} &&\
 fc-cache && fc-list &&\
 rm -rf /tmp/* && apt clean

EXPOSE 80

CMD ["/usr/local/bin/run.sh"]

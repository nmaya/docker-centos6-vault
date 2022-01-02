FROM centos:6

RUN sed -i -e 's/^#baseurl=/baseurl=/' \
           -e 's/^mirrorlist=/#mirrorlist=/' \
           -e 's!http://mirror.centos.org/centos/$releasever/!http://vault.centos.org/6.10/!' \
        /etc/yum.repos.d/*.repo && \
    sed -i -e 's/enabled=1/enabled=0/' \
        /etc/yum/pluginconf.d/fastestmirror.conf && \
    yum -y clean all

RUN yum update -y


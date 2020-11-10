FROM centos:latest
RUN yum -y update && yum install -y openssh-server && ssh-keygen -A
RUN echo root:P455w0rd | chpasswd
ADD ./sshd_config /etc/ssh/sshd_config
CMD /usr/sbin/sshd -D

FROM centos:latest
MAINTAINER damasta.hairullah@sugarlive.co.id
# Update the image with the latest packages (recommended)
RUN yum update -y; yum clean all

# Install epel-release
RUN yum install epel-release -y

# Install chrony
RUN yum install chrony -y

# Expose port chrony
EXPOSE 123/udp

# Run service chrony
CMD /usr/sbin/chronyd -4 -d -f /etc/chrony.conf
FROM centos:7

ENV PATH=$PATH:"/root/depot_tools"

RUN yum groupinstall -y "Development Tools" \
	&& yum install -y git gdb bzip2 wget readline-devel \
	&& git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git /root/depot_tools \
	&& echo 'export PATH=$PATH:"/root/depot_tools"' >> /root/.bashrc \
	&& fetch v8
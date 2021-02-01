FROM centos:7

WORKDIR /root

RUN yum groupinstall -y "Development Tools" \
    && yum install -y git gdb bzip2 wget readline-devel \
    && git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git \
    && echo 'export PATH=$PATH:"/root/depot_tools"' >> /root/.bashrc
    
RUN /root/depot_tools/fetch v8

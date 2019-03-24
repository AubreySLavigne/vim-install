FROM centos:7

# Install Dependencies
RUN yum upgrade --assumeyes \
    && yum install --assumeyes https://centos7.iuscommunity.org/ius-release.rpm \
    && yum install --assumeyes \
        gcc \
        git \
        make \
        ncurses-devel \
        python36u \
        python36u-devel \
    && yum autoremove --assumeyes

# Clone Git repo
WORKDIR /src
RUN git clone https://github.com/vim/vim

# Install Vim
WORKDIR /src/vim
RUN ./configure \
    --enable-python3interp \
    --with-python3-command=python3.6 \
    --with-python3-config-dir=/usr/lib64/python3.6/config-3.6m-x86_64-linux-gnu/ \
    && make \
    && make install


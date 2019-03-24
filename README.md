# vim-install
Docker image for building Vim 8.0+ with +python3 for CentOS

## Building the image

`docker build .`

## Extra

This image build vim with Python 3.6 installed.  This Dockerfile also contains build instructions for that version of Python, as it's not availble in the centos:7 base image.

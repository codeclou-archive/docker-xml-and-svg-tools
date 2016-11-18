FROM ubuntu:14.04

#
# PACKAGES
#
RUN sudo apt-get update
RUN sudo apt-get -y install xmlstarlet
RUN sudo apt-get -y install librsvg2-bin

RUN mkdir /icons/
WORKDIR /icons/

#
# WILL BE OVERWRITTEN
#
CMD echo "I work :)"

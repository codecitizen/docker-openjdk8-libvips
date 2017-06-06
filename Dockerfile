############################################################
# Dockerfile to build vips container images
# Based on Ubuntu
############################################################

# Set the base image to Ubuntu
FROM ubuntu:17.10

# Install OpenJDK 8
RUN apt-get update
RUN apt-get install -y openjdk-8-jdk

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

# Install libvips for Ubuntu
RUN apt-get -y install python3-gi gir1.2-vips-8.0
RUN apt-get -y install libvips 
RUN apt-get -y install libvips-tools

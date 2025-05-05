# Specify Ubuntu:bionic as base image
FROM ubuntu:bionic

# Install fortune and fortune-min  with apt (Ubuntu's Package Manager)
RUN apt update -y && apt install -y fortune fortunes-min

# run fortune
CMD ["/usr/games/fortune"]
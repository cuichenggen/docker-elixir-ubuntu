FROM ubuntu:18.04

RUN apt-get -y update && \
    apt-get -y install wget gnupg2 && \
    wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && \
    dpkg -i erlang-solutions_1.0_all.deb && \
    apt-get -y apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install esl-erlang && \
    apt-get -y install elixir && \
    apt-get clean && \
    apt-get -y autoremove

CMD ["/bin/sh"]

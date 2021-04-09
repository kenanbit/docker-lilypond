FROM ubuntu
MAINTAINER Kenan Schaefkofer <kbitikofer@gmail.com>

WORKDIR /root

ADD http://lilypond.org/download/binaries/linux-64/lilypond-2.20.0-1.linux-64.sh ./
ADD http://lilypond.org/download/binaries/linux-64/lilypond-2.21.82-1.linux-64.sh ./

RUN chmod +x lilypond-2.20.0-1.linux-64.sh lilypond-2.21.82-1.linux-64.sh
RUN ./lilypond-2.20.0-1.linux-64.sh --batch --prefix /root/v20
RUN ./lilypond-2.21.82-1.linux-64.sh --batch --prefix /root/v21

FROM centos

WORKDIR /opt

COPY ideaIC-2021.1.1.tar.gz /home

RUN tar -xvzf /home/ideaIC-2021.1.1.tar.gz

RUN rm -rf /home/ideaIC-2021.1.1.tar.gz

RUN mv /opt/* /opt/idea

RUN yum install java-1.8.0-openjdk -y

CMD /opt/idea/bin/idea.sh

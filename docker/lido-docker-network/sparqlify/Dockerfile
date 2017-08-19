# ubuntu because  oracle java not working out of the box on debian
FROM ubuntu:16.04

# basics
RUN \
    apt-get update && apt-get install -y \
    vim \
    software-properties-common \
    unzip \
    apt-utils \
    maven \
    devscripts \
    postgresql \
    libpostgresql-jdbc-java

# install oracle java runtime
RUN \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
    add-apt-repository -y ppa:webupd8team/java && \
    apt-get update && \
    apt-get install -y oracle-java8-installer && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/cache/oracle-jdk8-installer

# dependencies for running JDBC driver
RUN cd /usr/lib/jvm/java-8-oracle/jre/lib && wget https://jdbc.postgresql.org/download/postgresql-42.1.1.jar

# Sparqlify magic: download, extract, compile to deb package
RUN wget https://github.com/jonathanschlue/Sparqlify/archive/v0.8.2.zip && unzip v0.8.2.zip && cd Sparqlify-0.8.2 && mvn clean install

# install deb package
RUN dpkg -i /Sparqlify-0.8.2/sparqlify-debian-cli/target/sparqlify-cli_0.8.2_all.deb 

WORKDIR /data

CMD ["/bin/bash", "/data/entrypoint.sh"]

# CMD sleep 10; sparqlify -D -m /data/mapping.sml -j jdbc:postgresql://database:5432/postgres -U postgres > dump.rdf; sparqlify -m /data/mapping.sml -j jdbc:postgresql://database:5432/postgres -U postgres

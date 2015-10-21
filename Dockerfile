FROM irods/icommands:4.0.3

ADD target/porklock-standalone.jar /porklock-standalone.jar

RUN apt-get update && apt-get install -y \
  openjdk-7-jre-headless \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["java", "-jar", "/porklock-standalone.jar"]

CMD ["--help"]

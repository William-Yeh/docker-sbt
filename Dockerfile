# Sbt on Java 7
#
# URL: https://github.com/William-Yeh/docker-sbt
#
# @see http://www.scala-sbt.org/release/tutorial/Manual-Installation.html
#
# Version     0.7

FROM jeanblanchard/java:8
MAINTAINER William Yeh <william.pjyeh@gmail.com>


ENV SBT_VERSION  1.3.1
ENV SBT_JAR      http://central.maven.org/maven2/org/scala-sbt/sbt-launch/$SBT_VERSION/sbt-launch-$SBT_VERSION.jar


ADD  $SBT_JAR  /usr/local/bin/sbt-launch.jar  
COPY sbt.sh    /usr/local/bin/sbt

RUN apk upgrade --update && \
    apk add bash

RUN echo "==> fetch all sbt jars from Maven repo..."       && \
    echo "==> [CAUTION] this may take several minutes!!!"  && \
    sbt version

VOLUME [ "/app" ]
WORKDIR /app


# Define default command.
ENTRYPOINT ["sbt"]
CMD ["--version"]

Docker-Scala
============

## Summary

Repository name in Docker Hub: **[williamyeh/sbt](https://registry.hub.docker.com/u/williamyeh/sbt/)**

This repository contains Dockerized [sbt](http://www.scala-sbt.org/), published to the public [Docker Hub](https://registry.hub.docker.com/) via **automated build** mechanism.



## Configuration

This docker image contains the following software stack:

- OS: Debian jessie.

- Java: Oracle JDK 1.7.0

- Sbt: 0.13.8 (see [tag list](https://registry.hub.docker.com/u/williamyeh/sbt/tags/manage/) for details)



### Dependencies

* [williamyeh/java7](https://github.com/William-Yeh/docker-java7)


### History

* 0.7 - Move sbt out of original [williamyeh/scala](https://registry.hub.docker.com/u/williamyeh/scala/) repository to avoid redundancy (["By default, sbt will build projects with the same version of Scala used to run sbt itself."](http://www.scala-sbt.org/release/tutorial/Hello.html))

* 0.6 - Install sbt manually instead of deb.

* 0.5 - Support version tags.

* 0.4 - Fix APT dependency: openjdk-6-jre --> oracle-java7-installer.

* 0.3 - Change the Java dependency from [pulse00/java](https://github.com/dubture-dockerfiles/java) to [williamyeh/java7](https://github.com/William-Yeh/docker-java7).

* 0.2 - This repository was forked from [pulse00/scala](https://registry.hub.docker.com/u/pulse00/scala/).


## Alternatives

If you prefer a minimalistic Oracle JDK container on top of busybox rather than Debian 8 ("Jessie"), below are some alternatives:

- SBT with specific version of Scala:

  - [nightscape/docker-sbt](https://registry.hub.docker.com/u/nightscape/docker-sbt/): a nice fork from an old version of mine.


- SBT with default version of Scala:

  - [errordeveloper/sbt](https://registry.hub.docker.com/u/errordeveloper/sbt/).


## Usage


```
docker run  -v $(pwd):/app  williamyeh/sbt  ...
```
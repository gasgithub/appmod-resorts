FROM openliberty/open-liberty:21.0.0.12-full-java11-openj9-ubi
USER root

RUN yum update -y \
  && yum clean all

# currently empty OpejLiberty image with issues, just to trigger scanning
# COPY --chown=1001:0 src/main/liberty/config /config
# COPY --chown=1001:0 target/appmod.war /config/apps/modresorts-1.0.war

USER 1001
RUN configure.sh

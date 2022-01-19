FROM openliberty/open-liberty:20.0.0.1-full-java11-openj9-ubi
USER root

# currently empty OpejLiberty image, just to trigger scanning
# COPY --chown=1001:0 src/main/liberty/config /config
# COPY --chown=1001:0 target/appmod.war /config/apps/modresorts-1.0.war

USER 1001
RUN configure.sh

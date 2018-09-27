FROM mongo:latest

USER root

RUN mkdir -p /home/HealthCompanion

COPY HealthCompanion /home/HealthCompanion
COPY mongo.sh /home/mongo.sh
RUN chmod 777 /home/mongo.sh

CMD /home/mongo.sh

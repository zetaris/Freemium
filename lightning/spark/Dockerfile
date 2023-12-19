FROM bitnami/spark:3.1.2

USER root
RUN apt-get update \
   && apt-get install -y libsnappy-java

ENTRYPOINT [ "/opt/bitnami/scripts/spark/entrypoint.sh" ]
CMD [ "/opt/bitnami/scripts/spark/run.sh" ]



ARG TAG=glue_libs_1.0.0_image_01
FROM amazon/aws-glue-libs:${TAG}

ADD jupyter_start.sh /home/jupyter/jupyter_start.sh

RUN chown -R root:root /home/spark-2.4.3-bin-spark-2.4.3-bin-hadoop2.8 \
    && chmod 755 /home/jupyter/jupyter_start.sh

ENTRYPOINT ["/home/jupyter/jupyter_start.sh"]

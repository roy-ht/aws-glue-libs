ARG TAG=glue_libs_1.0.0_image_01
FROM amazon/aws-glue-libs:${TAG}

RUN chown -R root:root spark-2.4.3-bin-spark-2.4.3-bin-hadoop2.8
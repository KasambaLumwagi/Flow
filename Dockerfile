FROM apache/airflow:2.7.1-python3.11

USER root
RUN apt-get update && \
    apt-get install -y gcc python3-dev openjdk-11-jdk && \
    apt-get clean\
    apt-get update && apt-get install -y procps openjdk-11-jdk
# Set JAVA_HOME environment variable
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-arm64
RUN  export JAVA_HOME 
USER airflow

RUN pip install apache-airflow apache-airflow-providers-apache-spark pyspark
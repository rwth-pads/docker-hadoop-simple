FROM gyunamister/hadoop-docker

USER root

ENV HADOOP_PREFIX /usr/local/hadoop

RUN sudo yum install -y python3
RUN sudo python3 -m pip install mrjob

COPY core-site.xml.template $HADOOP_PREFIX/etc/hadoop/core-site.xml.template
COPY hdfs-site.xml $HADOOP_PREFIX/etc/hadoop/hdfs-site.xml
COPY yarn-site.xml $HADOOP_PREFIX/etc/hadoop/yarn-site.xml
COPY mapred-site.xml $HADOOP_PREFIX/etc/hadoop/mapred-site.xml

RUN $HADOOP_PREFIX/bin/hdfs namenode -format

COPY bootstrap.sh /etc/bootstrap.sh
RUN chown root:root /etc/bootstrap.sh
RUN chmod 777 /etc/bootstrap.sh
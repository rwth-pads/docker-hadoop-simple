FROM gyunamister/hadoop-docker

USER root
RUN sudo yum install -y python3
RUN sudo python3 -m pip install mrjob

CMD ["/etc/bootstrap.sh", "-d", "-bash"]

# docker-hadoop-simple

This repository provides a Docker image definition for a hadoop installation `hadoop-base-img` (prebuilt available on Docker Hub: [leahtgu/hadoop-base-img](https://hub.docker.com/r/leahtgu/hadoop-base-img)) and a docker compose file for a pseudo-distributed hadoop cluster consisting of three containers (primary namenode: hadoop, datanode, secondary namenode).
There are also some examples in the `mounted-data/` folder which is automatically mounted to the primary container.

This setup is intended for educational purposes, particlarly running python-defined MapReduce jobs via [mrjob](https://mrjob.readthedocs.io/en/latest/).

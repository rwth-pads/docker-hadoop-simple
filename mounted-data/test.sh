#!bin/bash

cd /mounted-data
hadoop fs -mkdir /data
hadoop fs -rmdir /data/counts
hadoop fs -put ./funny-story.txt /data/funny-story.txt
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-3.3.6.jar -files word_mapper.py,word_reducer.py -mapper "/usr/lib/python/pyenv/bin/python word_mapper.py" -reducer "/usr/lib/python/pyenv/bin/python word_reducer.py" -input /data/funny-story.txt -output /data/counts
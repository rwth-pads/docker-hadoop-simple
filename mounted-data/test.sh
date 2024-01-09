hadoop fs -put funny-story.txt /data/funny-story.txt
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar \
-files word_mapper.py,word_reducer.py \
-mapper "python word_mapper.py" \
-reducer "python word_reducer.py" \
-input /data/funny-story.txt \
-output /data/counts
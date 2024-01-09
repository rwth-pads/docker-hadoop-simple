hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar \
  -files word_mapper.py,word_reducer.py \
  -mapper "python3 word_mapper.py" \
  -reducer "python3 word_reducer.py" \
  -input /data/funny-story.txt \
  -output /data/counts
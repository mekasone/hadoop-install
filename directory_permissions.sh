echo Setting directory permissions ...
set JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk.x86_64
set HADOOP_PREFIX=~/hadoop
set HADOOP_CONF_DIR=$HADOOP_PREFIX/etc/hadoop
set YARN_CONF_DIR=$HADOOP_CONF_DIR
set PATH=$PATH:$HADOOP_PREFIX/bin
./hadoop/bin/hdfs dfs -mkdir /tmp 2> null
./hadoop/bin/hdfs dfs -chmod 1777 /tmp 2> null
./hadoop/bin/hdfs dfs -mkdir /user 2> null
./hadoop/bin/hdfs dfs -chmod 777 /user 2> null
./hadoop/bin/hdfs dfs -mkdir -p /tmp/hadoop-yarn/staging/history 2> null
./hadoop/bin/hdfs dfs -chmod -R 777 /tmp/hadoop-yarn 2> null
# also create an /xd directory for Spring XD testing
./hadoop/bin/hdfs dfs -mkdir /xd 2> null
./hadoop/bin/hdfs dfs -chmod 777 /xd 2> null
# also create an /app directory
./hadoop/bin/hdfs dfs -mkdir /app 2> null
./hadoop/bin/hdfs dfs -chmod 777 /app 2> null

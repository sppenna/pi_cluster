decommission:
	/opt/hadoop/sbin/stop-yarn.sh
	/opt/hadoop/sbin/stop-dfs.sh
	./sbin/cleanNodes.sh

provision:
	hdfs namenode -format
	/opt/hadoop/sbin/start-dfs.sh
	/opt/hadoop/sbin/start-yarn.sh
replicate-nodes:
	./sbin/copyNodes.sh

conf-spark:
	cp /home/pi/pi_cluster/spark_cfgs/* /opt/hadoop/spark/conf

path:
	./sbin/sendBashrc.sh

build-HiBench:
	mvn Phadoopbench -Psparkbench -Dspark=2.1 -Dscala=2.11 clean package

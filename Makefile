decomission:
	/opt/hadoop/sbin/stop-yarn.sh
	/opt/hadoop/sbin/stop-dfs.sh
	rm -rf /opt/hadoop/data
	./sbin/cleanNodes.sh

copy-cfgs:
	./sbin/copyNodes.sh

path:
	./sbin/sendBashrc.sh

provision:
	hdfs namenode -format
	/opt/hadoop/sbin/start-dfs.sh
	/opt/hadoop/sbin/start-yarn.sh


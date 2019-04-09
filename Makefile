
decommission-cluster:
	/opt/hadoop/sbin/stop-yarn.sh
	/opt/hadoop/sbin/stop-dfs.sh
	./sbin/cleanNodes.sh

commission-cluster:
	hdfs namenode -format
	/opt/hadoop/sbin/start-dfs.sh
	/opt/hadoop/sbin/start-yarn.sh

replicate-nodes:
	./sbin/copyNodes.sh

send-path:
	./sbin/sendBashrc.sh

build-HiBench:
	mvn -f /home/pi/pi_cluster/HiBench/ -Phadoopbench -Psparkbench -Dspark=2.1 -Dscala=2.11 clean package

copy-HiBench:
	cp -r benchmark_cfgs/* ./HiBench/conf/

prepare-kmeans:
	./HiBench/bin/workloads/ml/kmeans/prepare/prepare.sh

run-tests:
	./sbin/monitor-cluster.sh VAR1=$(VAR1)



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
	mvn -f /home/pi/pi_cluster/HiBench/ -Phadoopbench -Dspark=2.2 -Dscala=2.11 clean package

copy-HiBench:
	cp -r benchmark_cfgs/* ./HiBench/conf/

prepare-kmeans:
	./HiBench/bin/workloads/ml/kmeans/prepare/prepare.sh

ganglia-start:
	/home/pi/pi_cluster/sbin/startGanglia.sh

ganglia-stop:
	/home/pi/pi_cluster/sbin/stopGanglia.sh

run-cluster-monitor:
	python cluster_monitor.py

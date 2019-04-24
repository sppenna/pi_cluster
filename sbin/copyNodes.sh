#!/bin/bash
/home/pi/pi_cluster/hadoop_master_cfgs/* /opt/hadoop/etc/hadoop/
/home/pi/pi_cluster/spark_cfgs/* /opt/hadoop/spark/conf
for node in node1 node2 node3 node4;
do
	scp /home/pi/pi_cluster/hadoop_master_cfgs/* $node:/opt/hadoop/etc/hadoop/
	#ssh $node rm -rf /opt/hadoop/etc/hadoop/mapred-site.xml
done

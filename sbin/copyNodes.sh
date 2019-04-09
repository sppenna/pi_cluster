#!/bin/bash
cp /home/pi/pi_cluster/hadoop_master_cfgs/* /opt/hadoop/etc/hadoop/
cp /home/pi/pi_cluster/spark_cfgs/* /opt/hadoop/spark/conf
for node in node1 node2 node3;
do
	scp /home/pi/pi_cluster/hadoop_slave_cfgs/* $node:/opt/hadoop/etc/hadoop/
	#ssh $node rm -rf /opt/hadoop/etc/hadoop/mapred-site.xml
done

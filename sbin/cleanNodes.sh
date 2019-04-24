#!/bin/bash
rm -rf /opt/hadoop/logs/* /opt/hadoop/data /opt/hadoop/hdfs /hdfs/tmp/*
for node in node1 node2 node3 node4; 
do
	ssh $node rm -rf /opt/hadoop/data /opt/hadoop/logs/* /opt/hadoop/data /opt/hadoop/hdfs
done

#!/bin/bash
rm -rf /opt/hadoop/logs/* /opt/hadoop/data /opt/hadoop/hdfs
for node in node1 node2 node3; 
do
	ssh $node rm -rf /opt/hadoop/logs/* /opt/hadoop/data /opt/hadoop/hdfs
done

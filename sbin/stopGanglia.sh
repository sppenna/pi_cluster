#!/bin/bash
sudo service ganglia-monitor stop
sudo service gmetad stop
for node in node1 node2 node3 node4; 
do
	ssh $node sudo service ganglia-monitor stop
done

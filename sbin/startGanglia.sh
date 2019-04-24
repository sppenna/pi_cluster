#!/bin/bash
sudo service ganglia-monitor start
sudo service gmetad start
for node in node1 node2 node3 node4; 
do
	ssh $node sudo service ganglia-monitor start
done

echo "node-master: " 
vcgencmd measure_temp
echo ""

for node in node1 node2 node3
do
	echo "$node: " 
	ssh $node vcgencmd measure_temp
	echo ""
done


echo "node-master: " 
vcgencmd measure_temp
echo ""
for i in {1..2}
do
	for node in node1 node2 node3
	do
		echo "$node: " 
		ssh $node vcgencmd measure_temp
		echo ""
	done
	wait 5
done

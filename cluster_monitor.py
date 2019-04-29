
import os
import time

def write_temp(temp, file):
    f = open(file, "a+")
    f.write(temp)
    f.close()


def measure_temp(node):
    cmd = "ssh " + node + " vcgencmd measure_temp"
    temp = os.popen(cmd).readline()
    temp = temp.replace("temp=","").replace("'C", "")
    file = "/home/pi/pi_cluster/results/"+ node + ".csv"
    write_temp(temp, file)

def main():
    while True:
        measure_temp("node1")
        measure_temp("node2")
        measure_temp("node3")
        measure_temp("node4")
        time.sleep(1)

main()
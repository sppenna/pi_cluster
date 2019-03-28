#!/bin/bash
cd /home/pi/pi_bench/HiBench
mvn -Phadoopbench -Psparkbench -Dspark=2.1 -Dscala=2.11 clean package

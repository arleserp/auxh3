#!/bin/sh
i=1

while [ $i -le 3200 ]; do
    echo $i
    i=$(($i+1))
	java -Xms3G -Xmx6G  -XX:+UseG1GC  -XX:+UseG1GC -XX:MaxGCPauseMillis=200 -XX:ParallelGCThreads=20 -XX:ConcGCThreads=5 -XX:InitiatingHeapOccupancyPercent=70  -classpath dist/NetworkRecoverySim.jar networkrecoverysim.DataReplicationNodeFailingMain load longhubandspoke+v+97+l+2.graph 97 0 FirstNeighbor longhubandspoke+v+97+l+2.loc 50 replalgon NODELAY  0.25 4 nhopsinfo  3 3 0 FailIntv-0-25

done

#!/bin/sh
i=1

while [ $i -le 3200 ]; do
    echo $i
    i=$(($i+1))
java -Xms3G -Xmx3G  -XX:+UseG1GC  -XX:+UseG1GC -XX:MaxGCPauseMillis=200 -XX:ParallelGCThreads=20 -XX:ConcGCThreads=5 -XX:InitiatingHeapOccupancyPercent=70  -classpath dist/NetworkRecoverySim.jar networkrecoverysim.DataReplicationNodeFailingMain load smallworld+v+100+beta+0.5+degree+2.graph 0 0 FirstNeighbor smallworld+v+100+beta+0.5+degree+2.loc 50 replalgon NODELAY  0.25 4 nhopsinfo 3 3 0 FailIntv-0-25


done

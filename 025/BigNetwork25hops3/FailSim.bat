for /L %%x in (1, 1, 261) do (
Java -d64 -Xms3G -Xmx6G  -XX:+UseG1GC  -XX:+UseG1GC -XX:MaxGCPauseMillis=200 -XX:ParallelGCThreads=20 -XX:ConcGCThreads=5 -XX:InitiatingHeapOccupancyPercent=70  -classpath dist/NetworkRecoverySim.jar networkrecoverysim.DataReplicationNodeFailingMain load as19981231.graph 0 0 FirstNeighbor as19981231.loc 50 replalgon NODELAY 0.125 4 nhopsinfo 2 3 0 FailIntv-0-25
)

QUBO-Chimera
============

The core of this repository was developed by Alex Selby and is available [here](https://github.com/alex1770/QUBO-Chimera).  This repository removes result files and includes a containerized version of the code for testing on non-linux platforms.

The docker container can be built with, `build.sh`.  The container can be tested with,
```
docker run -v $(pwd)/testproblems:/testproblems hfs_alg -m1 -S1 testproblems/weightmode5/439/myformat/123
```

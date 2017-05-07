HFS-algorithm
============

The core of this repository was developed by Alex Selby.  The original source code is available [here](https://github.com/alex1770/QUBO-Chimera).  In contrast to the original, this repository focuses on the algorithmic code and includes a containerized version of the software for testing on non-linux platforms.


# Installation

The `make` command will build the executable called `qubo`.


# Usage

The exicutable can be tested with,
```
./qubo -m1 -S1 -n439
```
Run `./qubo -?` to see a complete list of options.


# Data Format

The format of the instance-description file (such as test/data/001) 
starts with a line giving the size of the Chimera graph (two numbers are given to specify an m x n
rectangle, but currently only a square, m=n, is accepted.)
The subsequent lines are of the form,
```
<chimera vertex> <chimera vertex> weight
```
where `<chimera vertex>` is specified by four numbers using the format described in the
comments at the start of `qubo.c`.


An ACSII illustration of a C_4 chimera graph,
```
            *         *         *         *
           /|        /|        /|        /|
          / |       / |       / |       / |
         *--|------*--|------*--|------*  |
            |         |         |         |
            |         |         |         |
            *         *         *         *
           /|        /|        /|        /|
          / |       / |       / |       / |
         *--|------*--|------*--|------*  |
            |         |         |         |
            |         |         |         |
            *         *         *         *
           /|        /|        /|        /|
          / |       / |       / |       / |
         *--|------*--|------*--|------*  |
            |         |         |         |
            |         |         |         |
            *         *         *         *
           /         /         /         / 
          /         /         /         /  
         *---------*---------*---------*
```
* The * represents 4 vertices
* The / represents K_4,4 (16 edges; all vertices connected to all others)
* The | and - represent 4 parallel lines (4 edges; each vertex connected to its corresponding one)


# Testing

The code container can be tested with,
```
qubo -m0 -n500 -t 1
```
and data file reading can be tested with,
```
qubo -m0 -t 1 data/001.hfs
```


# Containerization

This code currently only works on Linux and must be compiled with older versions of GCC.  
This containerized executable can be used for testing on non-linux platforms (note containerization does yield a significant overhead for this code).

The docker container can be built with, `build.sh`.  

The container can be tested with,
```
docker run hfs_alg -m0 -n500 -t 1
```
and data file reading can be tested with,
```
docker run -v $(pwd)/test/data:/data hfs_alg  -m0 -t 1 data/001.hfs
```



CFLAGS:= -Wall -O9 -funroll-loops
# multicore solver
#CFLAGS:= -Wall -O9 -funroll-loops -fopenmp -DPARALLEL
LFLAGS:= -lm

qubo:
	gcc -o qubo qubo.c $(CFLAGS) $(LFLAGS)

clean:
	rm -f qubo
# not compatible with latest gcc
#FROM gcc:latest
FROM gcc:4

COPY Makefile qubo.c normal.c /

RUN make

ENTRYPOINT ["/qubo"]

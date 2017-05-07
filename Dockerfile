# not compatible with latest gcc
#FROM gcc:latest
FROM gcc:5

COPY Makefile qubo.c normal.c /

RUN make

ENTRYPOINT ["/qubo"]

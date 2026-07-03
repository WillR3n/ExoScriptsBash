#!bin/bash

tail -n 26 "/etc/services" | \
grep -v '^$' | \
tac | \
rev | \
awk 'BEGIN {n=20} {print n, $0; n++}' | \
sort | \
wc -l 



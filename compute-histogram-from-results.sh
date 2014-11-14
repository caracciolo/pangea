#!/bin/bash
# Give this as input the results folder 
cat $1/* | sort -n | uniq -c | sort -n
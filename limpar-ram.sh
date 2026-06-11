#!/bin/bash

sudo sync

sudo sysctl vm.drop_caches=3

sudo sh -c 'echo 3>/proc/sys/vm/drop_caches'

clear

echo "Memória RAM Liberada!"
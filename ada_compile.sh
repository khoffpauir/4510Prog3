#!/bin/bash
gcc sort.adb -c -o sort.o
gnatbind sort
gnatlink sort

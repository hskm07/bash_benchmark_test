# bash_benchmark_test
This repository is a tool to measure a simple benchmark of shell scripts executed by bash.

## Demo


## Description
bash_benchmark_test is a simple benchmark test script that detects shell script speed, memory used at runtime, and errors.
Benchmark test can be executed by arranging it in the same hierarchy as the shel script to be measered and loading it when  the shell script is executed.
This script is a code that can be executed only with bash. It does not run in other shells.

## Requirment
<b>Kernel Version :</b><br>
Linux5.8.0-50-generic

<b>bash :</b><br>
GNU bash, バージョン 5.0.17(1)-release (x86_64-pc-linux-gnu)
Copyright (C) 2019 Free Software Foundation, Inc.
ライセンス GPLv3+: GNU GPL バージョン 3 またはそれ以降 <http://gnu.org/licenses/gpl.html>

This is free software; you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.


## Installation

```bash
sudo apt-get update
```

## Usage
example)
1.en running a benchmark test of sample_script.sh, place benchmark.sh in the same directory.
```bash
UbunutPC:~/shellscript$ ls -l bash_benchmark_test/
合計 12
-rwxrwx--- 1 ubuntu ubuntu 1228  4月 24 22:49 benchmark.sh
-rw-rw-r-- 1 ubuntu ubuntu  257  4月 24 22:48 sample_script.sh
```

2. The add the following code to the beginnig of the shell script you want to test code.
```bash
#!bin/bash
#
# sample script

# Load batch script
. ./benchmark.sh

## main ###
```

## Note
I don't test environments under Mac

## Author
* hskm07
* Twitter: https://twitter.com/butakimuch

## License
GNU bash, バージョン 5.0.17(1)-release (x86_64-pc-linux-gnu)
Copyright (C) 2019 Free Software Foundation, Inc.
ライセンス GPLv3+: GNU GPL バージョン 3 またはそれ以降 <http://gnu.org/licenses/gpl.html>

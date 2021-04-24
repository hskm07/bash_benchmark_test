#!bin/bash
#
# sample script

# Load batch script
. ./benchmark.sh

function success(){
    return 0
}

function failure(){
    return 1
}


for ((i=0; i<10000; i++)){
    if [[ $(($RANDOM%2)) -eq 1 ]]; then
        failure
    else
        success
    fi
}
#!/bin/bash
#
# A tool that detects the execution time and memory
# usage of bash scripts.


readonly LOGFILE='benchmark.txt'
START_TIME=`date +%N`
START_MEMORY=`free | awk '/Mem: /{print $4}'`
end_memory=0

####################################################
# Function to detect command erro and exit status.
# Globals   :
#    None
# Arguments :
#    LINENO
####################################################
errortrap(){
    # 
    errcode=$?
    echo "error line $1: command exited with status ${errcode}"
}
trap 'errortrap $LINENO' ERR


####################################################
# Function to output the benchmark.
# Globals   :
#    START_TIME
#    END_TIME
#    START_MEMORY
#    END_MEMORY
#    LOGFILE
# Arguments :
#    None
####################################################
benchmark(){
    local _runtime=`echo "scale=3; (${END_TIME} - ${START_TIME})/1000000000" | bc`
    local _cal_memory=$((${END_MEMORY}-${START_MEMORY}))

    
    cat <<EOS | tee ${LOGFILE}
[   Memory   ] : ${START_MEMORY} [kB] --> ${END_MEMORY} [kB]
[Memory Usgae] : ${_cal_memory} [kB]
[  Run time  ] : ${_runtime} sec
EOS
return 0
}

trap "
END_MEMORY=`free | awk '/Mem: /{print $4}'`
END_TIME=`date +%N`
benchmark
" EXIT
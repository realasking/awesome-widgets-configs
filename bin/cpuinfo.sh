#!/bin/bash
intel_home="/opt/intel/composer_xe_2013_sp1.0.080/mpirt/bin/intel64"
AA=`$intel_home/cpuinfo -g|grep "Processor name"|awk '{for(i=4;i<=NF;i++){printf $i" "}}'`
echo "<span style=\"color:#d0922f;\">${AA} </span>"

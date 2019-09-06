#!/bin/bash 
gz=`colunar |grep "干支"|cut -d" " -f2`
gz2=`colunar |grep 干支|cut -d" " -f3`
gz3=`colunar |grep 干支|cut -d" " -f4`
gz4=`colunar |grep 干支|cut -d" " -f5`
yl0=`colunar |grep 阴历|cut -d" " -f3`
yl1=`colunar |grep 阴历|cut -d" " -f4`
yl2=`colunar |grep 阴历|cut -d" " -f5`
echo "<span style=\"font-size:12pt;\">$yl0 $yl1 $yl2 </span>"
#echo "</p>"

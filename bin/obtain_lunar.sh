#!/bin/bash 
gz=`colunar |grep "干支"|cut -d" " -f2`
gz2=`colunar |grep 干支|cut -d" " -f3`
gz3=`colunar |grep 干支|cut -d" " -f4`
gz4=`colunar |grep 干支|cut -d" " -f5`
yl0=`colunar |grep 阴历|cut -d" " -f3`
yl1=`colunar |grep 阴历|cut -d" " -f4`
yl2=`colunar |grep 阴历|cut -d" " -f5`
echo "<span style=\"color:#ff0000;font-size:16pt;\">$gz</span><span style=\"color:#479e34;font-size:16pt;\"> $gz2 </span><span style=\"color:#ff9125;font-size:16pt;\"> $gz3 </span><span style=\"color:#6b97ff;font-size:16pt;\"> $gz4 </span><Br/>"
#echo "<p>"
echo "<b><span style=\"color:#b8860b;font-size:16pt;\"> $yl0</span><span style=\"color:#b8860b;font-size:16pt;\"> $yl1</span><span style=\"color:#b8860b;font-size:16pt;\"> $yl2 </span></b>"
#echo "</p>"

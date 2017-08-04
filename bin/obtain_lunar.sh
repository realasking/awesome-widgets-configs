#!/bin/bash 
gz=`colunar |grep "干支"|cut -d" " -f2`
gz2=`colunar |grep 干支|cut -d" " -f3`
gz3=`colunar |grep 干支|cut -d" " -f4`
gz4=`colunar |grep 干支|cut -d" " -f5`
yl1=`colunar |grep 阴历|cut -d" " -f4`
yl2=`colunar |grep 阴历|cut -d" " -f5`
echo "<span style=\"color:#ff0000;font-size:12pt;\">$gz</span><span style=\"color:#479e34;font-size:12pt;\"> $gz2 </span><span style=\"color:#ff9125;font-size:12pt;\"> $gz3 </span><span style=\"color:#0000ff;font-size:12pt;\"> $gz4 </span>"
echo "<b><span style=\"color:#b8860b;font-size:12pt;\"> $yl1</span><span style=\"color:#b8860b;font-size:12pt;\">$yl2 </span></b>"

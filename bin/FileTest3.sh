#!/bin/bash
cpath=`dirname $0`
cpath=`cd "${cpath}";cd "..";pwd`
. ${cpath}/conf/default.conf
. ${cpath}/bin/common

F_num=3			#该FileTest?.sh 为第几个
#numt=$2
#testdir=`cat ${cpath}/conf/.tmptestdir${2}`
testdir=$2
#echo "testdir $2"
#testfile="java -jar ${cpath}/lib/FileTest.jar"
filesh=FileTest3.sh        #当前脚本名，用于日志打印和记录
threadnum=$threadnum3	   #F 的线程数
filesize=${filesize3} 	  #F 的文件 大小
recsize=${recsize3}	  #F 的文件块大小
ftelog=${testdir}/log/filetesterror.log  #FileTest 错误日志记录
ftlog=${testdir}/log/ftlog3_${filesize}_${recsize}.log #F 日志记录
ftpath=${testdir}/ft3_${filesize}x${threadnum}_${recsize} #F的测试目录
#filesh=$3  
#threadnum=$4
#ftelog=$5
#ftlog=$6
#ftpath=$7
#filesize=$8
#recsize=$9
sh ${cpath}/bin/FileTest.sh $1 $testdir $filesh $threadnum $ftelog $ftlog $ftpath $filesize $recsize
#echo  "menu  $1"

#!/bin/sh
#port=45000
port=3000
open=()
while [ ${port} -le 3005 ]
do
	echo ${port}
	num=`ps alx | grep ${port} -c 2>&1`
	
	echo ${num}
	if [ ${num} -ge 2 ]
	then
		open+=("${port}")
	else
		open+=("${port}")
		echo hoge
	fi
	let port=${port}+1
done
echo "${open[0]}"
#echo ${open[1]}

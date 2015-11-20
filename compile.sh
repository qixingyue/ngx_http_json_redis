#!/bin/sh

other_module=""
m_module=" --add-module=$(pwd) $other_module"

cd  /data1/source/nginx-1.6.0
prefix=/data1/nginx160

#make clean
./configure --prefix=$prefix  $m_module --with-debug && make && make install
/data1/nginx160/sbin/nginx -s stop
/data1/nginx160/sbin/nginx 

#./configure --with-cc-opt=" -finstrument-functions " --prefix=$prefix  --add-module=$module_dir --with-debug && make && make install

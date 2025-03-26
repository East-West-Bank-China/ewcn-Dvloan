#!/bin/bash
export JRE_HOME=/opt/jre1.8.0_191 export PATH=$JRE_HOME/bin:$PATH export CLASSPATH=.:$JRE_HOME/lib
path="/file/log/kettle/deposit"
name="`date +%Y%m%d`-`date +%H%M%S`"
if [ ! -d $path ]; then
mkdir -p $path
fi
/opt/pdi-ce-7.0.0.0-25/data-integration/kitchen.sh /rep:"EWB KETTLE" /job:"/DEPOSIT/dep_push_gl" > $path/$name.log 2>&1 # /level:"Error"

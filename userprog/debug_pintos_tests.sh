#!/bin/bash

# NOTE: change this to the test name
TEST_FILE='args-none'

if [ $TEST_FILE == 'args-none' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/args-none -a args-none -- -q  -f run args-none < /dev/null
elif [ $TEST_FILE == 'args-single' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/args-single -a args-single -- -q  -f run 'args-single onearg' < /dev/null
elif [ $TEST_FILE == 'args-multiple' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/args-multiple -a args-multiple -- -q  -f run 'args-multiple some arguments for you!' < /dev/null
elif [ $TEST_FILE == 'args-many' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/args-many -a args-many -- -q  -f run 'args-many a b c d e f g h i j k l m n o p q r s t u v' < /dev/null
elif [ $TEST_FILE == 'args-dbl-space' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/args-dbl-space -a args-dbl-space -- -q  -f run 'args-dbl-space two  spaces!' < /dev/null
elif [ $TEST_FILE == 'sc-bad-sp' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/sc-bad-sp -a sc-bad-sp -- -q  -f run sc-bad-sp < /dev/null
elif [ $TEST_FILE == 'sc-bad-arg' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/sc-bad-arg -a sc-bad-arg -- -q  -f run sc-bad-arg < /dev/null
elif [ $TEST_FILE == 'sc-boundary' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/sc-boundary -a sc-boundary -- -q  -f run sc-boundary < /dev/null
elif [ $TEST_FILE == 'sc-boundary-2' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/sc-boundary-2 -a sc-boundary-2 -- -q  -f run sc-boundary-2 < /dev/null
elif [ $TEST_FILE == 'halt' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/halt -a halt -- -q  -f run halt < /dev/null
elif [ $TEST_FILE == 'exit' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/exit -a exit -- -q  -f run exit < /dev/null
elif [ $TEST_FILE == 'create-normal' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/create-normal -a create-normal -- -q  -f run create-normal < /dev/null
elif [ $TEST_FILE == 'create-empty' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/create-empty -a create-empty -- -q  -f run create-empty < /dev/null
elif [ $TEST_FILE == 'create-null' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/create-null -a create-null -- -q  -f run create-null < /dev/null
elif [ $TEST_FILE == 'create-bad-ptr' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/create-bad-ptr -a create-bad-ptr -- -q  -f run create-bad-ptr < /dev/null
elif [ $TEST_FILE == 'create-long' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/create-long -a create-long -- -q  -f run create-long < /dev/null
elif [ $TEST_FILE == 'create-exists' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/create-exists -a create-exists -- -q  -f run create-exists < /dev/null
elif [ $TEST_FILE == 'create-bound' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/create-bound -a create-bound -- -q  -f run create-bound < /dev/null
elif [ $TEST_FILE == 'open-normal' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/open-normal -a open-normal -p ../tests/userprog/sample.txt -a sample.txt -- -q  -f run open-normal < /dev/null
elif [ $TEST_FILE == 'open-missing' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/open-missing -a open-missing -- -q  -f run open-missing < /dev/null
elif [ $TEST_FILE == 'open-boundary' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/open-boundary -a open-boundary -p ../tests/userprog/sample.txt -a sample.txt -- -q  -f run open-boundary < /dev/null
elif [ $TEST_FILE == 'open-empty' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/open-empty -a open-empty -- -q  -f run open-empty < /dev/null
elif [ $TEST_FILE == 'open-null' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/open-null -a open-null -- -q  -f run open-null < /dev/null
elif [ $TEST_FILE == 'open-bad-ptr' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/open-bad-ptr -a open-bad-ptr -- -q  -f run open-bad-ptr < /dev/null
elif [ $TEST_FILE == 'open-twice' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/open-twice -a open-twice -p ../tests/userprog/sample.txt -a sample.txt -- -q  -f run open-twice < /dev/null
elif [ $TEST_FILE == 'close-normal' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/close-normal -a close-normal -p ../tests/userprog/sample.txt -a sample.txt -- -q  -f run close-normal < /dev/null
elif [ $TEST_FILE == 'close-twice' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/close-twice -a close-twice -p ../tests/userprog/sample.txt -a sample.txt -- -q  -f run close-twice < /dev/null
elif [ $TEST_FILE == 'close-stdin' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/close-stdin -a close-stdin -- -q  -f run close-stdin < /dev/null
elif [ $TEST_FILE == 'close-stdout' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/close-stdout -a close-stdout -- -q  -f run close-stdout < /dev/null
elif [ $TEST_FILE == 'close-bad-fd' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/close-bad-fd -a close-bad-fd -- -q  -f run close-bad-fd < /dev/null
elif [ $TEST_FILE == 'read-normal' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/read-normal -a read-normal -p ../tests/userprog/sample.txt -a sample.txt -- -q  -f run read-normal < /dev/null
elif [ $TEST_FILE == 'read-bad-ptr' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/read-bad-ptr -a read-bad-ptr -p ../tests/userprog/sample.txt -a sample.txt -- -q  -f run read-bad-ptr < /dev/null
elif [ $TEST_FILE == 'read-boundary' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/read-boundary -a read-boundary -p ../tests/userprog/sample.txt -a sample.txt -- -q  -f run read-boundary < /dev/null
elif [ $TEST_FILE == 'read-zero' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/read-zero -a read-zero -p ../tests/userprog/sample.txt -a sample.txt -- -q  -f run read-zero < /dev/null
elif [ $TEST_FILE == 'read-stdout' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/read-stdout -a read-stdout -- -q  -f run read-stdout < /dev/null
elif [ $TEST_FILE == 'read-bad-fd' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/read-bad-fd -a read-bad-fd -- -q  -f run read-bad-fd < /dev/null
elif [ $TEST_FILE == 'write-normal' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/write-normal -a write-normal -p ../tests/userprog/sample.txt -a sample.txt -- -q  -f run write-normal < /dev/null
elif [ $TEST_FILE == 'write-bad-ptr' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/write-bad-ptr -a write-bad-ptr -p ../tests/userprog/sample.txt -a sample.txt -- -q  -f run write-bad-ptr < /dev/null
elif [ $TEST_FILE == 'write-boundary' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/write-boundary -a write-boundary -p ../tests/userprog/sample.txt -a sample.txt -- -q  -f run write-boundary < /dev/null
elif [ $TEST_FILE == 'write-zero' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/write-zero -a write-zero -p ../tests/userprog/sample.txt -a sample.txt -- -q  -f run write-zero < /dev/null
elif [ $TEST_FILE == 'write-stdin' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/write-stdin -a write-stdin -- -q  -f run write-stdin < /dev/null
elif [ $TEST_FILE == 'write-bad-fd' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/write-bad-fd -a write-bad-fd -- -q  -f run write-bad-fd < /dev/null
elif [ $TEST_FILE == 'exec-once' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/exec-once -a exec-once -p build/tests/userprog/child-simple -a child-simple -- -q  -f run exec-once < /dev/null
elif [ $TEST_FILE == 'exec-arg' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/exec-arg -a exec-arg -p build/tests/userprog/child-args -a child-args -- -q  -f run exec-arg < /dev/null
elif [ $TEST_FILE == 'exec-multiple' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/exec-multiple -a exec-multiple -p build/tests/userprog/child-simple -a child-simple -- -q  -f run exec-multiple < /dev/null
elif [ $TEST_FILE == 'exec-missing' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/exec-missing -a exec-missing -- -q  -f run exec-missing < /dev/null
elif [ $TEST_FILE == 'exec-bad-ptr' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/exec-bad-ptr -a exec-bad-ptr -- -q  -f run exec-bad-ptr < /dev/null
elif [ $TEST_FILE == 'wait-simple' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/wait-simple -a wait-simple -p build/tests/userprog/child-simple -a child-simple -- -q  -f run wait-simple < /dev/null
elif [ $TEST_FILE == 'wait-twice' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/wait-twice -a wait-twice -p build/tests/userprog/child-simple -a child-simple -- -q  -f run wait-twice < /dev/null
elif [ $TEST_FILE == 'wait-killed' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/wait-killed -a wait-killed -p build/tests/userprog/child-bad -a child-bad -- -q  -f run wait-killed < /dev/null
elif [ $TEST_FILE == 'wait-bad-pid' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/wait-bad-pid -a wait-bad-pid -- -q  -f run wait-bad-pid < /dev/null
elif [ $TEST_FILE == 'multi-recurse' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/multi-recurse -a multi-recurse -- -q  -f run 'multi-recurse 15' < /dev/null
elif [ $TEST_FILE == 'multi-child-fd' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/multi-child-fd -a multi-child-fd -p ../tests/userprog/sample.txt -a sample.txt -p tests/userprog/child-close -a child-close -- -q  -f run multi-child-fd < /dev/null
elif [ $TEST_FILE == 'rox-simple' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/rox-simple -a rox-simple -- -q  -f run rox-simple < /dev/null
elif [ $TEST_FILE == 'rox-child' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/rox-child -a rox-child -p build/tests/userprog/child-rox -a child-rox -- -q  -f run rox-child < /dev/null
elif [ $TEST_FILE == 'rox-multichild' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/rox-multichild -a rox-multichild -p build/tests/userprog/child-rox -a child-rox -- -q  -f run rox-multichild < /dev/null
elif [ $TEST_FILE == 'bad-read' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/bad-read -a bad-read -- -q  -f run bad-read < /dev/null
elif [ $TEST_FILE == 'bad-write' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/bad-write -a bad-write -- -q  -f run bad-write < /dev/null
elif [ $TEST_FILE == 'bad-read2' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/bad-read2 -a bad-read2 -- -q  -f run bad-read2 < /dev/null
elif [ $TEST_FILE == 'bad-write2' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/bad-write2 -a bad-write2 -- -q  -f run bad-write2 < /dev/null
elif [ $TEST_FILE == 'bad-jump' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/bad-jump -a bad-jump -- -q  -f run bad-jump < /dev/null
elif [ $TEST_FILE == 'bad-jump2' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/userprog/bad-jump2 -a bad-jump2 -- -q  -f run bad-jump2 < /dev/null
elif [ $TEST_FILE == 'lg-create' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/filesys/base/lg-create -a lg-create -- -q  -f run lg-create < /dev/null
elif [ $TEST_FILE == 'lg-full' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/filesys/base/lg-full -a lg-full -- -q  -f run lg-full < /dev/null
elif [ $TEST_FILE == 'lg-random' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/filesys/base/lg-random -a lg-random -- -q  -f run lg-random < /dev/null
elif [ $TEST_FILE == 'lg-seq-block' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/filesys/base/lg-seq-block -a lg-seq-block -- -q  -f run lg-seq-block < /dev/null
elif [ $TEST_FILE == 'lg-seq-random' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/filesys/base/lg-seq-random -a lg-seq-random -- -q  -f run lg-seq-random < /dev/null
elif [ $TEST_FILE == 'sm-create' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/filesys/base/sm-create -a sm-create -- -q  -f run sm-create < /dev/null
elif [ $TEST_FILE == 'sm-full' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/filesys/base/sm-full -a sm-full -- -q  -f run sm-full < /dev/null
elif [ $TEST_FILE == 'sm-random' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/filesys/base/sm-random -a sm-random -- -q  -f run sm-random < /dev/null
elif [ $TEST_FILE == 'sm-seq-block' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/filesys/base/sm-seq-block -a sm-seq-block -- -q  -f run sm-seq-block < /dev/null
elif [ $TEST_FILE == 'sm-seq-random' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/filesys/base/sm-seq-random -a sm-seq-random -- -q  -f run sm-seq-random < /dev/null
elif [ $TEST_FILE == 'syn-read' ]; then
  pintos --gdb -v -k -T 300 --qemu  --filesys-size=2 -p build/tests/filesys/base/syn-read -a syn-read -p build/tests/filesys/base/child-syn-read -a child-syn-read -- -q  -f run syn-read < /dev/null
elif [ $TEST_FILE == 'syn-remove' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/filesys/base/syn-remove -a syn-remove -- -q  -f run syn-remove < /dev/null
elif [ $TEST_FILE == 'syn-write' ]; then
  pintos --gdb -v -k -T 60 --qemu  --filesys-size=2 -p build/tests/filesys/base/syn-write -a syn-write -p build/tests/filesys/base/child-syn-wrt -a child-syn-wrt -- -q  -f run syn-write < /dev/null
else
  echo 'unknown test'
fi

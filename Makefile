obj-m = myled.o

myled.ko:myled.c
	make -C /usr/src/linux M=`pwd` V=1 modules
cean:
	make -C /usr/src/linux M=`pwd` V=1 clearn

# Cross compilation Makefile for ARM
KERN_SRC=~/Desktop/Lab3/linux-5.3.7
obj-m = hello_world_module.o

all: 
	make -C $(KERN_SRC) ARCH=arm CROSS_COMPILE=arm-linux-gnueabi-  M=$(PWD) modules

clean:
	make -C $(KERN_SRC) ARCH=arm CROSS_COMPILE=arm-linux-gnueabi-  M=$(PWD) clean





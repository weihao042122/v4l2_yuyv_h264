TOP_DIR := $(shell pwd)
#APP = $(TOP_DIR)x264_test
APP = x264_test
CROSS_COMPILE :=/opt/v3s/spinand/lichee/out/sun8iw8p1/linux/common/buildroot/external-toolchain/bin/arm-linux-gnueabi-
LIB_DIR :=/home/w/tmp_mine/v3s_lib/out

#CC = arm-none-linux-gnueabi-gcc
CC = $(CROSS_COMPILE)gcc
CFLAGS = -g -I$(LIB_DIR)/include
LIBS = -lpthread -lx264 -lm
#LIBS = -lpthread 
#DEP_LIBS = -L$(LIB_DIR)/lib
HEADER =
OBJS = main.o  h264encoder.o

all:  $(OBJS)
	$(CC) -g -o $(APP) $(OBJS) $(LIBS)

clean:
	rm -f *.o a.out $(APP) core *~ ./out/*



################################################################################
# Project name   :
# File name      : Makefile
# Last modified  : Mon 07 Aug 2017 11:14:07 PM ICT
# Guide          :
###############################################################################

CXX = g++
RM = rm -f
CFLAGS = -Wall -std=c++11 -g -I.
LFLAGS = -s

TARGET = main

SRCS = $(wildcard *.cpp)
OBJS = $(SRCS:.cpp=.o)
DEPS = $(SRCS:.cpp=.deps)

-include $(DEPS)

%.deps: %.cpp
	@$(CXX) -MM $< > $@
	@$(CXX) $< -MM -MT $@ >> $@

%.o: %.cpp %.deps
	@$(CXX) -c $(CFLAGS) $< -o $@

$(TARGET): $(OBJS)
	@$(CXX) $(LFLAGS) $(OBJS) -o $@


all: $(TARGET)

run:
	./$(TARGET)

clear:
	@$(RM) *.o *.deps

clearall:
	@$(RM) $(TARGET) *.o *.deps

test: all clear run

.PHONY: all run clear clearall

# -Wall			: in ra cac warning
# -std:c=+11	: bien dich file .cpp chua code C++11(thong thuong la C++98)
# -fexceptions	: option xu ly ngoia le
# -pg			: option do thoi gian chya cua ham
# -g			: them thong tin debug (se lau hon)
# -s			: loai bo thong tin thua cua debug
# wildcard *.cpp : scan tat ca file duoi .cpp trong thu muc hie ntai
# CFLAGS		: co bien dich
# LFLAGS		: co lien ket
# -I.			: co tu dong tao tim file .h
# $<			: file nguon
# $@			: file dich
#
# xyz: main.exe
# .PHONY: xyz 	: thong bao cho make rang xyz khong phai la ten file
# g++ --MM main.cpp	: kiem tra su phu thuoc voi cac file nguon


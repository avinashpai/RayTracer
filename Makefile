CXX=c++
INC=./include
CXXFLAGS=-Wall -std=c++14 -I$(INC)

SRCS = $(wildcard src/*.cpp)
TARGET = raytracer

all: clean build run

clean:
	rm -f $(TARGET)

build:
	$(CXX) $(CXXFLAGS) $(SRCS) -o $(TARGET)

run:
	./$(TARGET)

debug:
	CXXFLAGS += -g
debug: clean build run

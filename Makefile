CXX = g++
CXXFLAGS = -std=c++11 -Wall

TARGET = main
OBJS = main.o FuncA.o

all: $(TARGET)

$(TARGET): $(OBJS)
  $(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJS)

main.o: main.cpp FuncA.h
  $(CXX) $(CXXFLAGS) -c main.cpp

FuncA.o: FuncA.cpp FuncA.h
  $(CXX) $(CXXFLAGS) -c FuncA.cpp

clean:
  rm -f $(TARGET) $(OBJS)

main=src/main.cpp
source=src/main.cpp
includes=-Iinclude
libs=-Llib -lglfw3 -lgdi32 -lvulkan-1
output=bin/main.exe
compiler=g++
warn=-Wall -Wextra -Werror -pedantic
flags=-std=c++17

default: $(main)
	$(compiler) $(flags) $(warn) $(includes) $(source) -o $(output) $(libs)

run: $(output)
	./$(output)

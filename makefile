main=src/main.cpp
source=src/main.cpp
includes=-Iinclude
libs=-Llib -lglfw3 -lgdi32 -lvulkan-1
output=bin/main.exe
output_release=bin/main_release.exe
compiler=g++
warn=-Wall -Wextra -Werror -pedantic
flags=-std=c++17
debug_flags=-DDEBUG=1
release_flags=-O3

default: $(main)
	$(compiler) $(debug_flags) $(flags) $(warn) $(includes) $(source) -o $(output) $(libs)

release: $(main)
	$(compiler) $(flags) $(release_flags) $(includes) $(source) -o $(output) $(libs)

run: $(output)
	./$(output)

run_release: $(output_release)
	./$(output_release)
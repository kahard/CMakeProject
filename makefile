PROJECT_NAME=MyProject
PROJECT_NAME_TESTS=MyProjectTests
prepare:
	-rm -rf build/
	mkdir build
	cmake -S . -B build/

build: prepare
	cmake --build build/ -j

rerun: 
	cmake --build build/ -j

run:
	./build/$(PROJECT_NAME)

check: 	
	-rm -rf build/
	mkdir build 
	cmake -S . -B build/ -DBUILD_TESTS=ON
	cmake --build build/ -j
	./build/tests/$(PROJECT_NAME_TESTS)

clear:
	-rm rf build/
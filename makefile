PROJECT_NAME=MyProject
prepare:
	-rm -rf build/
	mkdir build
	cmake -S . -B build/

check: prepare
	cmake --build build/ -j
	./build/PROJECT_NAME

rerun: 
	cmake --build build/ -j
	./build/$(PROJECT_NAME)

clear:
	-rm rf build/
all: dep build

dep:
	docker build -t fira:latest .

build:
	docker run --rm -v ${PWD}:/opt fira:latest ./script/build

build_ttf:
	docker run --rm -v ${PWD}:/opt fira:latest /bin/bash ./script/build_ttf

package:
	./script/package

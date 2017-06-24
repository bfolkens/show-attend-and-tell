DOCKER=nvidia-docker

build:
	nvidia-docker build -t show-attend-and-tell:train -f Dockerfile.train .
run:
	nvidia-docker run --rm -it -v $(PWD)/data:/workspace/data -v $(PWD)/image:/workspace/image -v $(PWD)/model:/workspace/model show-attend-and-tell:train $(ARGS)


#!/bin/bash

# you can change the path of the code dir here
code_dir=$PWD/code

echo $code_dir


unameOut="$(uname -s)"

case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

if [ $machine = "Mac" ]
then
	docker run -it --security-opt seccomp=unconfined -p 5000:5000 -v "$code_dir":/home/user/code c-dev-env
else
	docker run --user user -it --security-opt seccomp=unconfined -p 5000:5000 -v "$code_dir":/home/user/code c-dev-env
fi

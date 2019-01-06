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
	docker run -it -v "$code_dir":/home/user/code c-dev-env bash
else
	docker run --user $(id -u) -it -v "$code_dir":/home/user/code c-dev-env bash
fi

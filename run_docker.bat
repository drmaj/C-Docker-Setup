SET code_dir=%cd%/code


docker run --platform linux -it --security-opt seccomp=unconfined -p 5000:5000 -v %code_dir%:/home/user/code c-dev-env

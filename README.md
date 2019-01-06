# C-Docker-Setup
Docker setup for simple C development environment

## Initial Setup 
Download and install Docker on your machine: https://docs.docker.com/get-started/. 

### Linux Specific Instructions
It's probably not a good idea to run Docker as root. You can add your username to the docker group by running the following command in the terminal:

`sudo usermod -aG docker your-user`

You can read more about it [here](https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-using-the-convenience-script).

### Windows Specific Instructions
If you are running Docker on windows, you will have to enable experimental features. You can find instructions on how to do that [here](https://docs.docker.com/docker-for-windows/#experimental-mode).

## Install Virtual Machine
Once you have installed Docker installed, use the script provided to run the installation.

`$ ./setup_docker.sh`

from within the cloned directory for linux/mac and

`setup_docker`

from within the cloned directory for windows.


## Run Virtual Machine
Once the installation is complete, run the Docker machine using the provided script:

`$ ./run_docker.sh`

for linux/mac or

`run_docker`

for windows.

If you are running Docker for Windows, you will need to create a code subdirectory where you cloned the repository. For example, say that you cloned the repo to

`C:/Users/JohnDoe/C-Docker-Setup`

You will need to create the code subdirectory as follows:

`C:/Users/JohnDoe/C-Docker-Setup/code`

You will then need to make the docker daemon aware of this directory to enable the mapping. Instructions for how to do that are found [here](https://docs.docker.com/docker-for-windows/#shared-drives).


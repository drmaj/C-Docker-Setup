SET code_dir=%cd%/code


docker run --platform linux -it -v %code_dir%:/home/user/code c-dev-env bash

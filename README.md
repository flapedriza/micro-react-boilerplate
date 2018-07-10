TO CONFIGURE THIS PROJECT DOCKER AND NODE VERSION 10.6.0 MUST BE INSTALLED 

DEVELOPMENT

Type on a terminal:
    docker build ./ -t micro-name
    docker run -t -e app_env=dev -e PORT=XXXX micro-name


PRODUCTION

Type on a terminal:
    docker build ./ -t micro-name micro-name
# angular-hot-reload-template

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 17.2.0.

It is a template app for hot reloading of an Angular app with Docker.

## Overview


https://github.com/LFLCH/angular-hot-reload-template/assets/62034725/cf09e9e6-c592-424d-b5fb-d5307996f1a9



## Prerequisite
Make sure you have installed Docker, and the ```Docker``` and ```devcontainers```  VSCode extension.

## Get started

Build the app
```bash
docker build . --file Dockerfile.dev --tag ng-template
```

Run
```bash
docker run  -it --rm -v ./:/app ng-template /bin/bash 
```
Then, open the Docker tab of VSCode, and right click on the running container, and select 'join to vscode'.

A new window will open. It is the dev environment. 

Then, in the terminal, do not to install the node modules with ```npm install``` if it is the first time.

That being done, run ```ng serve``` and open you browser at the indicated adress.

The application will automatically reload if you change any of the source files, in the container, but also in the host file system !

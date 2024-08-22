# Zetaris-Freemium-Docker
This repo is for the docker image to run the zetaris-ui , zetaris-api the zetaris-server containers on your local machine.
## Prerequisites
•	You have installed the latest version of Docker Desktop. -->https://docs.docker.com/get-docker/

•	You have installed a Git client.  --> https://git-scm.com/downloads

* For Windows users

  Once you have installed docker , check these settings on WSL -->Check this link to confirm that docker is working on Windows https://learn.microsoft.com/en-us/windows/wsl/tutorials/wsl-containers


## Setup
* Pull the latest Freemium image for zetaris github repo
    ```bash
    git clone https://github.com/zetaris/Freemium.git
    ```

## Login to azure docker repo
* Login to Docker to get authenticated by running the commands below in a Windows Powershell

    ```bash
    docker login
    ```
## Start docker

### Windows specific
On windows , we need to convert the files to unix mode. In the Windows Powershell ,ensure that you are in the path of the cloned repo eg : C:\Users\john.doe\Freemium
```
./windows_convert.sh
```

### Start dockers
* Now we can pull the images by running

  ```bash
  docker-compose pull
  ```
  ```bash
   docker-compose up
  ```
### Add dev account
```
docker-compose exec -it zetaris-db /scripts/generate_default_dev_users.sh
```
a user `dev@account.com` will be added and password is `password`

# KNOWN ISSUES

## Log Errors
When the docker starts, it will start 4 different docker images at the same time, api and gui will need the server to be ready
So at the beginning, there will be some warnings  like below, this is ok if server is still starting, it will stop once sever is fully started

```
2023-10-19 21:28:32 2023.10.19 10:28:32:606 HikariPool-1 connection adder WARN org.zetarisapache.hive.jdbc.HiveConnection
2023-10-19 21:28:32     Failed to connect to zetaris-server:10000
2023-10-19 21:28:32     Failed to connect to zetaris-server:10000
2023-10-19 21:28:32     Failed to connect to zetaris-server:10000
```
## Server
The driver docker image might seems to fail if the images don't execute in the correct order, if the above warning keeps going, you may go to docker desktop console to restart it if it hangs
You just need to restart the zetaris-server only until it starts successfully

### Add dev account again in case you see an authentication error while logging in with the dev@account.com credentials
```
docker-compose exec -it zetaris-db /scripts/generate_default_dev_users.sh
```
a user `dev@account.com` will be added and password is `password`


# Third party jdbc support

User can download their own jdbc driver and copy it over to `customer_data/lib/jdbc` directory, those jars will be loaded to the platform when docker starts. 
For example, on linux
```
mkdir -p customer_data/lib/jdbc
cp your_jdbc.jar customer_data/lib/jdbc
```
Restart the zetaris-server container in docker console

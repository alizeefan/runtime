# runtime

## Set up host
```shell
curl https://raw.githubusercontent.com/alizeefan/runtime/master/host/prepare_host.sh | sudo bash
```
## Build and install graph DB
```shell
curl https://raw.githubusercontent.com/alizeefan/runtime/master/graph/build-image.sh | sudo bash
```
```
## Build Py Environment
```shell
sudo docker build -t py-runtime https://raw.githubusercontent.com/alizeefan/runtime/master/py-env/Dockerfile
```

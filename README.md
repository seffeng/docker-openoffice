# Docker Openoffice

## 版本

* [4.1 , 4.1.14 , latest](https://github.com/seffeng/docker-openoffice)

## 环境

```shell
debian: ^11.8
openoffice: 4.1.14
```

## 常用命令：

```sh
# 拉取镜像
$ docker pull seffeng/openoffice

# 运行
$ docker run --name openoffice-test -d -p <port>:80 seffeng/openoffice

# 查看正在运行的容器
$ docker ps

# 停止
$ docker stop [CONTAINER ID | NAMES]

# 启动
$ docker start [CONTAINER ID | NAMES]

# 进入终端
$ docker exec -it [CONTAINER ID | NAMES] sh

# 删除容器
$ docker rm [CONTAINER ID | NAMES]

# 镜像列表查看
$ docker images

# 删除镜像
$ docker rmi [IMAGE ID]

# 构建镜像
$ docker build -t [IMAGE NAME] .

# 复制本机文件到容器
$ docker cp /root/file [CONTAINER ID]:/root/file

# 复制容器文件到本机
$ docker cp [CONTAINER ID]:/root/file /root/file
```

## 网络

```shell
# 查看网络
$ docker network ls

# 创建网络
$ docker network create [NAME]
```

## 备注

1、[官网](https://www.alpinelinux.org)


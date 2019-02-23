# usage

- 将frps.ini 放到/conf下
```
docker run --name=frps --network=host -v=/conf:/conf -d --restart=always metajs/frps
```

## other
- [docker-frpc](https://github.com/broven/docker-frpc) 客户端
- [frps example](https://github.com/fatedier/frp/blob/master/conf/frps_full.ini)
- [centos-boot.sh](https://github.com/broven/centos-boot.sh) 初始化配置一台centos 服务器
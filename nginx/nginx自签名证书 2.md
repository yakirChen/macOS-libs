# 自签名证书生成 & Nginx开启Https、Http2配置

__🥵 前提编译Nginx时包含了h2模块`--with-http_v2_module`和ssl模块`--with-http_ssl_module`__

## 自签名证书生成
```bash
openssl req -config localhost_key.conf \
    -new -sha256 \
    -newkey rsa:2048 \
    -nodes -keyout localhost.key \
    -x509 -days 365000 \
    -out localhost.crt
```

证书生成需要的配置文件
[localhost_key.conf](localhost_key.conf)


证书生成之后的Nginx配置
```properties
server {
    listen       80;
    server_name  localhost;
    listen       443 ssl http2;

    ssl_certificate      /Volumes/To/servers/localhost.crt;
    ssl_certificate_key  /Volumes/To/servers/localhost.key;
}
```
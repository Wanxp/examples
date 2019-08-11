对master数据库进行数据添加
```http request
POST /user/master HTTP/1.1
Host: localhost:8080
Content-Type: application/json;charset=UTF-8
Cache-Control: no-cache

{
	"name":"master",
	"age":1
}
```
响应返回的是master数据库的内容
```http response
{
    "id": 1,
    "name": "master",
    "age": 1
}
```

对slave数据库进行数据添加
```http request
POST /user/slave HTTP/1.1
Host: localhost:8080
Content-Type: application/json;charset=UTF-8
Cache-Control: no-cache

{
	"name":"slave",
	"age":2
}
```
响应返回的是slave数据库的内容
```http response
{
    "id": 1,
    "name": "slave",
    "age": 2
}
```
可以看两条数据id一致，id都是1,master数据库中用户名为master，slave数据库用户名为slave
An module get json data from redis and render it with tpl from shm.

* Write tpl content to shm

	shm/loadtoshm 
	You can use like : echo "hello world " | loadtoshm 0xff13000 , that will write "hello world " to the 0xff13000 sharememory . We recommand you use cat a.tpl | loadtoshm <sharememoryId>
	shm/readshm 
	You can use like :  ./readshm 0xff13000 , that will show the content at sharememory ided by 0xff13000

* Write json content 

	php init.php 

	That will write some k,v json_array to redis.

* Uri config
	
	ngx_http_redis_module.h

	It has some 	ngx_http_redis_uri_config struct ,will config how to get key from uri , and sharememoryId 

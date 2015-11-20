SDIR=/data1/source/nginx-1.6.0

ngx_http_redis_module.o: ngx_http_redis_module.c  
	    gcc -c -pipe  -O -W -Wall -Wpointer-arith -Wno-unused-parameter -Werror -g \
 		-I ${SDIR}/src/core \
		-I ${SDIR}/src/event \
		-I ${SDIR}/src/event/modules \
		-I ${SDIR}/src/os/unix \
		-I ${SDIR}/objs \
		-I ${SDIR}/src/http \
		-I ${SDIR}/src/http/modules \
		-I ${SDIR}/src/mail -o ngx_http_redis_module.o \
		ngx_http_redis_module.c 
clean:
	rm -f ngx_http_redis_module.o

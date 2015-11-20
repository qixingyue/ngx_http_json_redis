#!/bin/sh

php b.php | ./loadtoshm 0xff13000
./readshm 0xff13000

php f.php | ./loadtoshm 0xff12000
./readshm 0xff12000

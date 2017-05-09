# mysql-healthcheck

this is a project that creates a docker images with mysql installed (based on the official mysql image but without the volume, so data can be commited)
It also hosts a simple .net core app that acts as an healthcheck for your db. this will make it easier for your e.g. your aws load balancer 
to check if the db is working.

todos:
- right now healtcheck does _NOT_ check the actual state of the db - will follow
- image is not build automatically
- image is based on ubiregiinc/mysql-without-volume (which in turn is very similar to the official image)


docker pull schwamster/mysql-healthcheck

docker run -d -p 3306:3306 -p 4300:80 -e MYSQL_ROOT_PASSWORD=your-password schwamster/mysql-healthcheck

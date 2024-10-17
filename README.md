# SBB Mysql 
# First get the JSON File over the gitlab pipeline
# Then use that file with the transform.py
# Last but not least build the docker
# docker build .
# docker run -d -e MYSQL_PASSWORD=password -e MYSQL_RANDOM_ROOT_PASSWORD=true -e MYSQL_DATABASE=sbb -e MYSQL_USER=user (COPIED ID(sha256:692d4437b6ab2cfbc72463be4d2cb5e23b003c826e35264eb8fea4652d77cacb) or Name)
# docker exec -it (COPIED ID(b38c404f8bdfd762c1c499d10726953ebfb2dbc3f2cfa68653aa118d0f1ac56f)) mysql -u user -p   
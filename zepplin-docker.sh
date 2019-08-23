docker container run -dit --name zeppelin -p 8080:8080 -p 4040:4040 --rm -v $PWD/logs:/logs -v $PWD/notebook:/notebook -e ZEPPELIN_LOG_DIR='/logs' -e ZEPPELIN_NOTEBOOK_DIR='/notebook' --name zeppelin apache/zeppelin:0.8.1

docker exec -it sandbox-hdp bash
ambari-admin-password-reset

# HDP 2.5
wget https://archive.cloudera.com/hwx-sandbox/hdp/hdp-2.5.0/HDP_2.5_docker.tar.gz
docker load < HDP_2.5_docker.tar.gz
wget https://gist.githubusercontent.com/orendain/8d05c5ac0eecf226a6fed24a79e5d71a/raw/041ddbe52687570923bb51c5fe988c88cba94d64/start-sandbox-hdp-25.sh


# HDP 2.6.5
wget https://archive.cloudera.com/hwx-sandbox/hdp/hdp-2.6.5/HDP_2.6.5_deploy-scripts_180624d542a25.zip


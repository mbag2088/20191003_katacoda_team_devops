 
ssh host01;
docker network create mynetwork;
docker pull 22072017/ubuntu:ansible-master.16.04.2;
docker pull 22072017/ubuntu:ansible-cible.16.04.2;
docker run -dt --name ansible_node  --network mynetwork -v /root:/work_dir/training-files 22072017/ubuntu:ansible-master.16.04.2 /bin/bash;
docker run -dt --name managed_node1  --network mynetwork -v /root:/work_dir/training-files 22072017/ubuntu:ansible-cible.16.04.2 /bin/bash;
docker run -dt --name managed_node2  --network mynetwork -v /root:/work_dir/training-files 22072017/ubuntu:ansible-cible.16.04.2 /bin/bash;
docker exec ansible_node bash -c "chmod 777 /work_dir/training-files; mv /work_dir/training-files/hosts.ini /work_dir/";
docker exec managed_node1 bash -c "chmod 777 /work_dir/training-files; service ssh start";
docker exec managed_node2 bash -c "chmod 777 /work_dir/training-files; service ssh start";

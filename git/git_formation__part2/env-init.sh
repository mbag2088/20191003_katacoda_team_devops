ssh host01;
docker pull freez13/amazonlinux:git;
docker run -dt --name git_host -v /root:/work_dir/ freez13/amazonlinux:git /bin/bash;
docker exec git_host bash -c "chmod 750 /work_dir/";
clear;

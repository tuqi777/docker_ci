#!/bin/bash
ssh root@59.110.137.44 > /dev/null 2>&1 << eeooff
# 构建后端
cd /root/source/docker_ci
docker-compose

eeooff
echo done!


ssh root@59.110.137.44 "df -h"
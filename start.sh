#!/bin/bash

# 读取文件并设置环境变量，注意读取文件最后一行必须是空行
while IFS='=' read -r key value; do
    export "$key=$value"
done < notionenv.config

# 获取所有环境变量的名称
env_vars=$(env | cut -d'=' -f1)

# 输出所有环境变量
for var in $env_vars; do
    echo "$var is: $(eval echo \$$var)"
done

echo "-----------start notion-----------"
yarn start
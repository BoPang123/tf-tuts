# Terraform script for Oasis
introduction:
Start with an ec2 server with jenkins and terraform installed
Then create pipleline in jenkins,
Automatically pull the terraform script stored in github,
Automate ec2 instance deployment.
Automate deployment while using scripts to install docker on newly deployed ec2.
Pull the docker image of springboot stored on the dockerhub and run it
This repo is used to store teh terraform scripts. And if you commit to this repo, the jenkins would rebuild the instance. The jenkins would check every two minutes for new commits.
jenkins server ip: http://54.198.255.241:8080

先有一个ec2服务器，安装jenkins和terraform
然后在jenkins中创建pipleline,
自动化拉取github中储存的terraform脚本，
自动化部署ec2 instance，
自动化部署的同时用脚本在新部署的ec2上安装docker,
拉取dockerhub上储存的springboot的docker image,再运行
这个仓库用于存储terraform脚本。如果提交到这个repo, jenkins会重新构建实例。jenkins将每两分钟检查一次新提交。
jenkins server ip: http://54.198.255.241:8080
可以在这个readme记录提交时间,提交内容和提交者，触发重新构建。

commit 1: 2023/10/19 15:45 修改readme 庞博

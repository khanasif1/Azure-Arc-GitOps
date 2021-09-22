###########################################################################
##############################Web DEPLOYMENT###############################

cd C:\_dev\_github\Azure-Arc-GitOps\k8.kubernetesWorld.Web
docker build -t azure_arc_k8_web:rc1 .
docker run -d -p 8080:80 -e message='Docker : Welcome to Azure Arc GitOps'  --name azure_arc_web azure_arc_k8_web:rc1
#Start-Process "http://localhost:8080/home/index"


###########################################################################
########################Push Docker Hub####################################
docker login -u= -p=
docker images -a
docker tag azure_arc_k8_web:rc2 khanasif1/azure_arc_k8_web:rc2.0
docker push khanasif1/azure_arc_k8_web:rc2.0

###########################################################################
########################Delete Images####################################

#docker rmi $(docker images -a -q) -f
#docker rm $(docker ps -a -q) -f



###########################################################################
########################Don' Care Commands#################################
docker pull khanasif1/k8_server_user:rc3
docker run -d -p 80:80  --name userserverdh khanasif1/arc_k8_server_user:rc3
docker inspect ec4b4807ead8

docker images -a

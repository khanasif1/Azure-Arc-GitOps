#Reference: https://stormpath.com/blog/tutorial-deploy-asp-net-core-on-linux-with-docker
###########################################################################
##############################Web DEPLOYMENT###############################

cd **path**\k8.kubernetesWorld\kubernetesMicroserviceApp\k8.kubernetesWorld.Web
docker build -t k8_web:rc1 .
docker run -d -p 8080:80  --name web k8_web:rc1
#Start-Process "http://localhost:8080/home/index"


###########################################################################
########################Push Docker Hub####################################
docker login -u=**uid** -p=**pwd**
docker tag k8_client_user:rc2.5 khanasif1/k8_client_user:rc2.5
docker push khanasif1/k8_client_user:rc2.5


docker login -u=$$$$ -p=$$$$
docker tag k8_server_user:rc3 khanasif1/k8_server_user:rc3
docker push khanasif1/k8_server_user:rc3

docker pull khanasif1/k8_server_user:rc3
docker run -d -p 80:80  --name userserverdh khanasif1/k8_server_user:rc3
docker inspect ec4b4807ead8

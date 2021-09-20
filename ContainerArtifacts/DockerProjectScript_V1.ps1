#Reference: https://stormpath.com/blog/tutorial-deploy-asp-net-core-on-linux-with-docker
###########################################################################
##############################Web DEPLOYMENT###############################

cd C:\_dev\_github\Azure-Arc-GitOps\k8.kubernetesWorld.Web
docker build -t azure_arc_k8_web:rc1 .
docker run -d -p 8080:80 -e message='Docker : Welcome to Azure Arc GitOps'  --name azure_arc_web azure_arc_k8_web:rc1
#Start-Process "http://localhost:8080/home/index"


###########################################################################
########################Push Docker Hub####################################
docker login -u=**** -p=****
docker images -a
docker tag azure_arc_k8_web:rc1 khanasif1/azure_arc_k8_web:rc1.0
docker push khanasif1/azure_arc_k8_web:rc1.0


docker pull khanasif1/k8_server_user:rc3
docker run -d -p 80:80  --name userserverdh khanasif1/arc_k8_server_user:rc3
docker inspect ec4b4807ead8



$appClonedRepo = "https://github.com/khanasif1/Azure-Arc-GitOps.git"
$arcClusterName = "Arc-MicroK8s-Cluster-AzVM"
$resourceGroup = "Arc-Microk8s-AzVM"
$ns = "arc-k8-org"

$arcClusterName = "Arc-MicroK8s-Cluster"
$resourceGroup = "ArcRG"

$arcClusterName = "Azure-VM-K8s-Cluster"

az k8s-configuration create `
--name arc-web1 `
--cluster-name $arcClusterName --resource-group $resourceGroup `
--operator-instance-name arc-web --operator-namespace arc-k8-org `
--repository-url $appClonedRepo `
--scope namespace --cluster-type connectedClusters `
--operator-params="--git-poll-interval 3s --git-readonly --git-path=K8sArtifacts/yaml"

 
az k8s-configuration create `
 --name arc-web1 `
 --cluster-name $arcClusterName --resource-group $resourceGroup `
  --operator-instance-name arc-web  --operator-namespace $ns `
  --repository-url $appClonedRepo `
  --scope namespace   --cluster-type connectedClusters `
  --operator-params="--git-branch=main --git-poll-interval 3s --git-readonly --git-path=K8sArtifacts/yaml"


az k8s-configuration show --name arc-web1 --cluster-name $arcClusterName --resource-group $resourceGroup --cluster-type connectedClusters


  docker images -a
docker rmi $(docker images -a -q) -f
docker rm $(docker ps -a -q) -f

k delete ns arc-k8-org
k create ns arc-k8-org

k -n arc-k8-org get deploy  -o wide
k get pod -n  arc-k8-org -o wide
k get svc -n  arc-k8-org -o wide
k describe pod arc-web-75bbbbb655-rfnxx -n  arc-k8-org
k describe pod arc-web-helm-arc-k8-org-helm-operator-7f86b55d4-588ns    -n  arc-k8-org



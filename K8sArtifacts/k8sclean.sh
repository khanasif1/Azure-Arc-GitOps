#sudo apt install wget

#kubectl config set-context --current --namespace=$namespace
echo "*****Start Cleanup******"
wget -O - https://raw.githubusercontent.com/khanasif1/Azure-Arc-GitOps/main/K8sArtifacts/cleanup/delete.sh | sudo bash

#************Apps************
echo "*****Deploy Web Application******"
#microk8s kubectl apply -f https://raw.githubusercontent.com/khanasif1/Azure-Arc-GitOps/main/K8sArtifacts/yaml/web.yaml

#*******Ingress Controller*********
echo "*****Deploy Ingress Routing******"
#microk8s kubectl apply -f https://raw.githubusercontent.com/khanasif1/Azure-Arc-GitOps/main/K8sArtifacts/IngressController/ingress.yaml 

echo "*****End Cleanup******"
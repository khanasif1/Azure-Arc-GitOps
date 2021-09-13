$namespace="arc-k8-org"

#sudo apt install wget

#kubectl config set-context --current --namespace=$namespace

#wget -O - https://raw.githubusercontent.com/khanasif1/Azure-Arc-GitOps/main/K8sArtifacts/IngressController/Ingress.sh | sudo bash

microk8s enable ingress
#************Apps************

#microk8s kubectl apply -f https://raw.githubusercontent.com/khanasif1/Azure-Arc-GitOps/main/K8sArtifacts/yaml/web.yaml

#*******Ingress Controller*********

#microk8s kubectl apply -f https://raw.githubusercontent.com/khanasif1/Azure-Arc-GitOps/main/K8sArtifacts/IngressController/ingress.yaml 


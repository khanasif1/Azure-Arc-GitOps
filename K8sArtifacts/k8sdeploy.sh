$namespace="arc-k8-org"

sudo apt install wget

kubectl config set-context --current --namespace=$namespace

wget -O - https://raw.githubusercontent.com/khanasif1/Azure-Arc-GitOps/main/AKSArtifacts/IngressController/Ingress.sh | sudo bash

#*******Ingress Controller*********

#microk8s kubectl apply -f https://raw.githubusercontent.com/khanasif1/Azure-Arc-GitOps/main/AKSArtifacts/IngressController/ingress.yaml 
#************Apps************

#microk8s kubectl apply -f https://raw.githubusercontent.com/khanasif1/Azure-Arc-GitOps/main/AKSArtifacts/yaml/web.yaml

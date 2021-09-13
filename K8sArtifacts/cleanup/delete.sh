kubectl config set-context --current --namespace=arc-k8-org

#========DELETE============
microk8s kubectl delete ns arc-k8-org

helm delete nginx-ingress



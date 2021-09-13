# Use Helm to deploy an NGINX ingress controller
helm repo update
#helm install nginx-ingress stable/nginx-ingress --namespace arc-k8-org --set controller.replicaCount=1 --set controller.nodeSelector."beta\.kubernetes\.io/os"=linux --set defaultBackend.nodeSelector."beta\.kubernetes\.io/os"=linux

helm install nginx-ingress ingress-nginx/ingress-nginx
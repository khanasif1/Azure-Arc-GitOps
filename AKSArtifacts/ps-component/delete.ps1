kubectl config set-context --current --namespace=arc-k8-org
<#
========DELETE============

#WEB
kubectl delete deployment web -n arc-k8-org
kubectl delete  services web-service  -n arc-k8-org
#>


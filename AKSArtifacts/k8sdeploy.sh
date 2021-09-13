$namespace="arc-k8-org"


kubectl config set-context --current --namespace=$namespace

https://raw.githubusercontent.com/khanasif1/Azure-Arc-GitOps/main/AKSArtifacts/IngressController/Ingress.ps1

<#*******Ingress Controller*********#>

microk8s kubectl apply -f https://raw.githubusercontent.com/khanasif1/Azure-Arc-GitOps/main/AKSArtifacts/IngressController/ingress.yaml
<#************Apps************#>

microk8s kubectl apply -f https://raw.githubusercontent.com/khanasif1/Azure-Arc-GitOps/main/AKSArtifacts/yaml/web.yaml

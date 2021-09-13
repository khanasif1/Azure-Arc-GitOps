$namespace="arc-k8-org"


kubectl config set-context --current --namespace=$namespace

<#*******Ingress Controller*********#>

kubectl apply -f https://raw.githubusercontent.com/khanasif1/Azure-Arc-GitOps/main/AKSArtifacts/IngressController/ingress.yaml
<#************Apps************#>

kubectl apply -f https://raw.githubusercontent.com/khanasif1/Azure-Arc-GitOps/main/AKSArtifacts/yaml/web.yaml

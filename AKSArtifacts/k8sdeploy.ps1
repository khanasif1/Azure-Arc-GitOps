$namespace="k8rg"


kubectl config set-context --current --namespace=**namespace**

<#*******Ingress Controller*********#>

kubectl apply -f .\IngressController\ingress.yaml
<#************Apps************#>

kubectl apply -f yaml/web.yaml

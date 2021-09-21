az login

$appClonedRepo = "https://github.com/khanasif1/Azure-Arc-GitOps.git"
$resourceGroup = "Arc-Microk8s-AzVM"
$ns = "arc-k8-org"
$resourceGroup = "ArcRG"
$arcClusterName = "Azure-VM-K8s-Cluster"

###########################################################################
######################Deploy GitOps Config################################
# az k8s-configuration create `
# --name arc-web1 `
# --cluster-name $arcClusterName --resource-group $resourceGroup `
# --operator-instance-name arc-web --operator-namespace arc-k8-org `
# --repository-url $appClonedRepo `
# --scope namespace --cluster-type connectedClusters `
# --operator-params="--git-poll-interval 3s --git-readonly --git-path=K8sArtifacts/yaml"

 
az k8s-configuration create `
 --name arc-web1 `
 --cluster-name $arcClusterName --resource-group $resourceGroup `
  --operator-instance-name arc-web  --operator-namespace $ns `
  --repository-url $appClonedRepo `
  --scope namespace   --cluster-type connectedClusters `
  --operator-params="--git-branch=main --git-poll-interval 3s --git-readonly --git-path=K8sArtifacts/yaml"


  $ns="arc-k8"
  az k8s-configuration create `
 --name arc-web1 `
 --cluster-name $arcClusterName --resource-group $resourceGroup `
  --operator-instance-name arc-web  --operator-namespace $ns `
  --repository-url $appClonedRepo `
  --scope namespace   --cluster-type connectedClusters `
  --operator-params="--git-branch=main --git-poll-interval 3s --git-readonly --git-path=K8sArtifacts/yaml/app2"


###########################################################################
######################Validate Config################################
az k8s-configuration show --name arc-web1 --cluster-name $arcClusterName --resource-group $resourceGroup --cluster-type connectedClusters



###########################################################################
########################Don' Care Commands#################################

k delete ns arc-k8-org
k create ns arc-k8-org

k delete ns arc-k8
k create ns arc-k8


k -n arc-k8-org get deploy  -o wide
k get pod -n  arc-k8-org -o wide
k get svc -n  arc-k8-org -o wide
k describe pod arc-web-75bbbbb655-rfnxx -n  arc-k8-org
k describe pod arc-web-helm-arc-k8-org-helm-operator-7f86b55d4-588ns    -n  arc-k8-org

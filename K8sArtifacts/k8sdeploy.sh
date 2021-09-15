#sudo apt install wget

#kubectl config set-context --current --namespace=$namespace
echo "*****Installing Ingress******"

outns=$(microk8s kubectl get ns -o=name) \
for x in $outns \
    do \
        echo "$x"
        if [[ "$x" = "namespace/ingress" ]] \
        then  \
            echo "match" \
            wget -O - https://raw.githubusercontent.com/khanasif1/Azure-Arc-GitOps/main/K8sArtifacts/IngressController/Ingress.sh | sudo bash
        else \
            echo "Ingress already exists!" \
        fi \
    done

#************Apps************
echo "*****Deploy Web Application******"
#microk8s kubectl apply -f https://raw.githubusercontent.com/khanasif1/Azure-Arc-GitOps/main/K8sArtifacts/yaml/web.yaml

#*******Ingress Controller*********
echo "*****Deploy Ingress Routing******"
#microk8s kubectl apply -f https://raw.githubusercontent.com/khanasif1/Azure-Arc-GitOps/main/K8sArtifacts/IngressController/ingress.yaml 
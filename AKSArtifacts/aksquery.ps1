kubectl config set-context --current --namespace=k8-org

kubectl create namespace k8-org
kubectl get namespace
kubectl get nodes --watch 
kubectl get deployment  
kubectl get services
kubectl get pods
kubectl get pods -n nginx-ingress-controller-5dcf6dd88d-rhf5w 

kubectl exec -it --namespace=k8-org web-bfdbf7f45-cnnxg     -- /bin/sh
curl -i -X GET "http://10.0.53.59/health"
curl -i -X GET "http://10.0.53.59"


kubectl describe pod web-bfdbf7f45-bqr7v   -n k8-org
kubectl describe pod nginx-ingress-controller-5dcf6dd88d-rhf5w -n k8-org

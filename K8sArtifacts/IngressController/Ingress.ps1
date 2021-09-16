kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.0.0/deploy/static/provider/baremetal/deploy.yaml


#Verify installation
kubectl get pods -n ingress-nginx \
-l app.kubernetes.io/name=ingress-nginx --watch

ingress-controller --version
kubectl create -f db-pod.yml
kubectl create -f web-pod.yml
kubectl create -f db-svc.yml
kubectl create -f web-svc.yml

echo "you can now connect to minikube external ip (minikube ip) at port (kubectl describe svc web)"

kubernetes

install kubernetes
git@github.com:kubernetes/kubernetes.git
make kubectl available to system
http://kubernetes.io/docs/user-guide/prereqs/

install minikube
http://kubernetes.io/docs/getting-started-guides/minikube/
# OS X/amd64
curl -Lo kubectl http://storage.googleapis.com/kubernetes-release/release/v1.4.5/bin/darwin/amd64/kubectl && chmod +x kubectl && sudo mv kubectl /usr/local/bin/
start:
minikube start
stop:
minikube stop
status: minikube status

kubectl get cd

Test: https://github.com/coopermaa/hit-counter-demo
git clone git@github.com:coopermaa/hit-counter-demo.git

kubectl create -f db-pod.yml
kubectl create -f web-pod.yml
kubectl create -f db-svc.yml

()
kubectl exec -it web /bin/bash

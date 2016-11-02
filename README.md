kubernetes-demo

This is an introductory hands on lab on kubernetes technology. To make it work:

Clone kubernetes from git@github.com:kubernetes/kubernetes.git
Download kubectl from http://kubernetes.io/docs/user-guide/prereqs/ and make it available to system

Follow minikube install instructions from http://kubernetes.io/docs/getting-started-guides/minikube/

# OS X/amd64
curl -Lo kubectl http://storage.googleapis.com/kubernetes-release/release/v1.4.5/bin/darwin/amd64/kubectl && chmod +x kubectl && sudo mv kubectl /usr/local/bin/

Lab Instructions:

minikube operations:

# minikube start
# minikube stop
# minikube status

kubectl operations

# kubectl get nodes
# kubectl get svc
# kubectl get cd
# kubectl get rc

we will use https://github.com/coopermaa/hit-counter-demo to build the necesary pods for this demo.
# git clone git@github.com:coopermaa/hit-counter-demo.git

To create all kubernetes components:

# kubectl create -f db-pod.yml
# kubectl create -f web-pod.yml
# kubectl create -f db-svc.yml
# kubectl create -f web-svc.yml
# kubectl create -f web-rc.yml


to take a look inside containers:
# kubectl exec -it web /bin/bash

# create k8s cluster
kind create cluster --name $USER

# connect the kubectl to the new cluster
export KUBECONFIG="$(kind get kubeconfig-path --name=$USER)"

## CLUSTER check
# get cluster info
kubectl cluster-info

# get cluster nodes
kubectl get nodes

# get pod workload
kubectl get pod

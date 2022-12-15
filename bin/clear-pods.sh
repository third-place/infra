set -e

kubectl get pods | grep Error | awk '{print $1}' | xargs kubectl delete pod
kubectl get pods | grep Completed | awk '{print $1}' | xargs kubectl delete pod
set -e

helm install ingress-nginx ingress-nginx/ingress-nginx
kubectl apply -f config/prod/ingress-nginx.yaml
kubectl apply -f config/prod/cluster-issuer.yaml
kubectl apply -f config/prod/cert-manager.yaml

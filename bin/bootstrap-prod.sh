set -e

# apply all the secrets
kubectl apply -f secrets/prod/dockerconfigjson.yaml
kubectl apply -f secrets/prod/backstage.yaml
kubectl apply -f secrets/prod/kafka.yaml
kubectl apply -f secrets/prod/postgres-backstage.yaml
kubectl apply -f secrets/prod/postgres-community.yaml
kubectl apply -f secrets/prod/postgres-user.yaml
kubectl apply -f secrets/prod/postgres-image.yaml
kubectl apply -f secrets/prod/postgres-notification.yaml
kubectl apply -f secrets/prod/cognito.yaml
kubectl apply -f secrets/prod/aws.yaml
kubectl apply -f secrets/prod/image_service.yaml

# ingress
helm install ingress-nginx ingress-nginx/ingress-nginx

# cert manager for SSL
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.10.1/cert-manager.crds.yaml
helm install \
  cert-manager jetstack/cert-manager \
  --namespace cert-manager \
  --create-namespace \
  --version v1.10.1

# bootstrap fluxCD
flux check --pre

flux bootstrap github \
  --owner=third-place \
  --repository=infra \
  --branch=main \
  --path=./clusters/prod \
  --personal

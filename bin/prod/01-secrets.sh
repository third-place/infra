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
kubectl apply -f secrets/prod/image-service.yaml
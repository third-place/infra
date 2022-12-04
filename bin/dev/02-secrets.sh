set -e

kubectl apply -f secrets/dev/dockerconfigjson.yaml
kubectl apply -f secrets/dev/backstage.yaml
kubectl apply -f secrets/dev/kafka.yaml
kubectl apply -f secrets/dev/postgres-community.yaml
kubectl apply -f secrets/dev/postgres-user.yaml
kubectl apply -f secrets/dev/postgres-image.yaml
kubectl apply -f secrets/dev/postgres-notification.yaml
kubectl apply -f secrets/dev/cognito.yaml
kubectl apply -f secrets/dev/aws.yaml
kubectl apply -f secrets/dev/image-service.yaml
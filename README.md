# Third Place Infra

Dev prerequisites: `kind`, `helm`, `kubectl`, `flux`

Production prerequisites: `helm`, `kubectl`, `flux`

## Cluster Setup 

Check out [this guide](https://github.com/Neutrollized/free-tier-gke) to find the right kubernetes deployment for your budget.

## Executables

Follow the commands in `bin/` related to the environment you plan to launch.

## Secrets

Inside `secrets/{dev/prod}` are a collection of template files. Each template needs to be copied, and (base64 encoded) values filled in.

## Todo

* Terraform:
  * Cognito
  * Network
  * Postgres
  * Kafka

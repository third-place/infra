set -e

flux check --pre

flux bootstrap github \
  --owner=third-place \
  --repository=infra \
  --branch=main \
  --path=./clusters/prod \
  --personal
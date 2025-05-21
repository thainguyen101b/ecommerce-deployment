#!/bin/sh

set -euo pipefail

echo "\n🗝️  Create Secret for OAuth2 Resource Server.\n"

kubectl delete secret keycloak-issuer-resourceserver-secret || true

kubectl create secret generic keycloak-issuer-resourceserver-secret \
  --from-literal=spring.security.oauth2.resourceserver.jwt.issuer-uri=$1 \
  --from-literal=keycloak.auth-server-url=$2

echo "\n🗝️  Secret generation completed successfully.\n"
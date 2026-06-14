#!/bin/bash
set -euo pipefail

command -v kubectl &>/dev/null || { echo "[ERROR] kubectl not found."; exit 1; }
command -v flux &>/dev/null    || { echo "[INFO] Installing flux..."; curl -s https://fluxcd.io/install.sh | sudo bash; }

echo "Creating flux-system namespace..."
kubectl create namespace flux-system 2>/dev/null || true

echo "Paste your age.agekey content (Ctrl+D when done):"
kubectl create secret generic sops-age \
    --namespace=flux-system \
    --from-file=age.agekey=/dev/stdin 2>/dev/null || true

flux bootstrap github \
    --owner=shreenivasa4 \
    --repository=homelab \
    --branch=main \
    --path=fluxcd/clusters/production \
    --components-extra image-reflector-controller,image-automation-controller \
    --token-auth

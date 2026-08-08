#!/bin/bash
# Trigger K8up backups for all applications with Schedules

set -e

echo "Triggering Flux suspend job..."
kubectl delete job manual-flux-pause -n flux-system 2>/dev/null || true
kubectl create job manual-flux-pause --from=cronjob/backup-flux-pause -n flux-system

echo "Waiting 10 seconds for Flux to suspend..."
sleep 10

NAMESPACES=(
  immich
  forgejo
  vaultwarden
  jellyfin
  obsidian-livesync
  koito
  navidrome
  servarr
)

echo "Triggering backups for all namespaces..."

for ns in "${NAMESPACES[@]}"; do
  echo "Creating backup in namespace: $ns"
  RANDOM_HASH=$(openssl rand -base64 12 | tr -dc 'a-z' | head -c 8)
  kubectl apply -n "$ns" -f - <<EOF
apiVersion: k8up.io/v1
kind: Backup
metadata:
  name: simulated-backup-${RANDOM_HASH}
spec:
  backend:
    repoPasswordSecretRef:
      name: k8up-secret
      key: password
    s3:
      endpoint: http://truenas.lan:9000
      bucket: $ns
      accessKeyIDSecretRef:
        name: k8up-secret
        key: username
      secretAccessKeySecretRef:
        name: k8up-secret
        key: password
  podSecurityContext:
    fsGroup: 0
    runAsUser: 0
EOF
done

echo ""
echo "All backups triggered. Monitor with:"
echo "  watch 'kubectl get backups -A'"
echo "  kubectl get pods -A | grep backup"

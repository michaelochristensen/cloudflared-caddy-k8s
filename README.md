# cloudflared-caddy-k8s

Kubernetes manifests to run `cloudflared` tunnel and `caddy` in-cluster.

## Deploy

```bash
kubectl apply -f cloudflared-k8s.yaml
```

## Required edits

Update placeholders in `cloudflared-k8s.yaml` before applying:
- `REPLACE_WITH_CLOUDFLARE_TUNNEL_TOKEN`
- `REPLACE_WITH_YOUR_PUBLIC_KEY`

# cloudflared-caddy-k8s

Helm chart + Argo CD `Application` to run `cloudflared` tunnel in-cluster.

## Repository layout

- `charts/cloudflared-caddy`: Helm chart for `cloudflared`
- `argocd-application.yaml`: Argo CD `Application` to deploy this chart

## Prerequisites

Create required secrets in the target namespace (`cloudflared`) before syncing Argo CD:

```bash
kubectl create namespace cloudflared
kubectl -n cloudflared create secret generic cloudflared-token \
  --from-literal=token='<YOUR_CLOUDFLARE_TUNNEL_TOKEN>'
```

By default, chart value `secrets.create=false` so external secrets are expected.

## Deploy with Argo CD

```bash
kubectl apply -f argocd-application.yaml
```

Argo CD will deploy from:

- `repoURL`: `https://github.com/michaelochristensen/cloudflared-caddy-k8s.git`
- `path`: `charts/cloudflared-caddy`
- `namespace`: `cloudflared`

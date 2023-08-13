# Helm Charts for forager

# Usage

```
[1] Push to Github -> [2] Trigger versioned release -> [3] Pull version for deployment
```

# Contributing

After edits, update the chart version in `Chart.yaml`. Changelogs are also stored in `Chart.yaml`.

# Release Hook

See `.github/workflows/release.yml`


## Generating Sealed Secrets

### Requirements

`kubeseal`

### Steps

0. Write your secrets manifest.

1. Get public cert of your Sealed Secrets K8s controller

`kubeseal --fetch-cert --controller-namespace sealed-secrets --controller-name sealed-secrets`

2. Generate sealed version of your secrets manifest.

`kubeseal < sealed-secret-template.yaml > my-sealed-secret.yaml --controller-namespace sealed-secrets --controller-name=sealed-secrets --format yaml --scope cluster-wide`


3. Copy into charts.


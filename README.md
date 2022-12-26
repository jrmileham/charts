# Helm Charts
*A collection of helm charts*

---
❗️***Note:** some of these charts are customised versions of existing charts. Credits and sources noted where possible.*

## Repo Structure
- The `index.yaml` file is the helm repo file
- Each chart is in its own folder
- Each package for a chart is included in the repo
- See the [helm guide](https://helm.sh/docs/topics/charts/#the-chart-file-structure) for chart directory structure

## Commands
- ✅ Add Repo: `helm repo add [repo-name] https://jrmileham.github.io/charts`
- 📄 List charts: `helm search repo [repo-name]`
- 📲 Install chart: `helm install [release-name] [repo-name]/[chart-name] `

## Charts
| Chart      | Description                                        | Notes                                     |
|------------|----------------------------------------------------|-------------------------------------------|
| local-path | Persistent local storage with Kubernetes (k8s/k3s) | Customised version of Rancher's own chart |

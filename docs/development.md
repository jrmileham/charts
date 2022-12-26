# Development Notes and Commands

- 📝 Create chart with: `helm create [name]`
- ✅ Verify chart with: `helm lint [name]`
- 📦 Package chart with: `helm package [name]`
- 📄 Generate new index: `helm repo index . --merge index.yaml --url https://github.com/jrmileham/charts/releases/download/[tag]/[file]`
- 🐞 See: https://helm.sh/docs/chart_template_guide/debugging for test and degub commands
  - `helm template --debug [chart name]`
  - `helm install [release name] [package].tgz --namespace [namespace] --create-namespace --debug`
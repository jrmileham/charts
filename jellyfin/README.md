# Jellyfin Media Server
---

Jellyfin is a Free Software Media System that puts you in control of managing and streaming your media.

## Prerequisites
- Kubernetes v1.12+
- helm 3

## Installing
To add the repo and install the chart run:
```shell
helm add repo jrmileham https://jrmileham.github.io/charts
helm update repo
helm install jellyfin jrmileham/jellyfin --namespace jellyfin --create-namespace
```
## Uninstalling
To uninstall the chart using release name run:
```shell
helm delete --purge jellyfin
```
*The command removes all the Kubernetes components associated with the chart and deletes the release.*

## Installed resources
By default the chart will install the following resources:
- The deployment
- Service
- Ingress
- Storage Class

## Customisation
To customise the chart upon install, see the [values.yaml](values.yaml) file for what you can set.


## Jellyfin directories:
- `config` - *Main server config directory*
- `cache`  - *Server cache directory*
- `media`  - *Media directory*
- `transcodes` - *Transcoded media files directory*

### Setup layout
| Directory     | Path               | External Vol        |
|---------------|--------------------|---------------------|
| Config / data | `/config`            | jellyfin-data       |
| Cache         | `/config/cache`      | *None*              |
| Transcodes    | `/config/transcodes` | jellyfin-transcodes |
| Media         | `/data/media`        | jellyfin-media      |


## References 
References:
- https://github.com/jellyfin/jellyfin

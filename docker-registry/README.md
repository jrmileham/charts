# Docker Registry V2
---
*This chart provides the [Docker Registry V2](https://github.com/distribution/distribution). It sets up the registry with HTTPS*

The Docker Registry provides a private place to store your own custom container images

## Prerequisites
- Kubernetes v1.12+
- helm 3

## Installing
To add the repo and install the chart run:
```shell
helm add repo jrmileham https://jrmileham.github.io/charts
helm update repo
helm install docker-registry jrmileham/docker-registry --namespace docker-registry --create-namespace
```
## Uninstalling
To uninstall the chart using release name run:
```shell
helm delete --purge docker-registry
```
*The command removes all the Kubernetes components associated with the chart and deletes the release.*

## Installed resources
By default the chart will install the following resources:
- The deployment
- The Service
Optionally:
- Ingress
- PVC

## Customisation
To customise the chart upon install, see the [values.yaml](values.yaml) file for what you can set.

## References 
As mentioned above, this is a chart for the local-path-provisioner by Rancher. It's a customised version of Rancher's own chart for the provisioner.
References:
- https://docs.docker.com/registry/deploying
- https://www.docker.com/blog/how-to-use-your-own-registry-2/
- https://hub.docker.com/_/registry

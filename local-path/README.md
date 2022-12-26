# Rancher's Local Path Provisioner
---
*This chart provides the [rancher local-path-provisioner](https://github.com/rancher/local-path-provisioner). It is a customised version of Rancher's own chart for the provisioner*

The Rancher Local Path Provisioner provides a way for a Kubernetes cluster to **provision local storage** in each node of a 
cluster. It utilises the features introduced by the Kubernetes [Local Persistent Volume feature](https://kubernetes.io/blog/2018/04/13/local-persistent-volumes-beta/).

## Prerequisites
- Kubernetes v1.12+
- helm 3

## Installing
To add the repo and install the chart run:
```shell
helm add repo jrmileham https://jrmileham.github.io/charts
helm update repo
helm install local-storage jrmileham/local-storage --namespace local-storage --create-namespace
```
## Uninstalling
To uninstall the chart using release name run:
```shell
helm delete --purge local-path-storage
```
*The command removes all the Kubernetes components associated with the chart and deletes the release.*

## Installed resources
By default the chart will install the following resources:
- The Provisioner deployment
- The RBAC resources for provisioning (you need the `--authorization-mode=RBAC` flag set on the api server to use)
  - Service Account
  - Cluster Role
  - Cluster Role Binding
- Config Map
- Storage Class

## Customisation
To customise the chart upon install, see the [values.yaml](values.yaml) file for what you can set.

To customise storage locations and storage classes, see the configuration section from the [original repo readme here](docs/original-repo-readme.md#configuration)

## References 
As mentioned above, this is a chart for the local-path-provisioner by Rancher. It's a customised version of Rancher's own chart for the provisioner.
References:
- https://github.com/rancher/local-path-provisioner
- https://github.com/rancher/local-path-provisioner/tree/master/deploy/chart/local-path-provisioner

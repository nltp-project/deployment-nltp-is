# Deployment Instructions

## Prerequisites

### 1. Platform setup

In order to deploy NLTP you need to have the following requirements met:

* Running Kubernetes Cluster with a supported version, at least two nodes, NFS shared storage
* An [NGINX ingress controller](https://kubernetes.github.io/ingress-nginx/deploy/) installed on the cluster
* A [kubectl](https://kubernetes.io/docs/tasks/tools/) configured to connect to the cluster
* Installed 3rd party prerequisites on the cluster (see [deploy.sh](../deploy.sh) for details)

For more information about setting up a Kubernetes cluster, please see [Kubernetes documentation](https://kubernetes.io/docs/setup/).

### 2. Domains and Certificates

See [Domains and Certificates](domains-and-certificates.md) section for information regarding required domain names and TLS/SSL certificates.

## Deploying NLTP

### 1. Prepare configuration files

Please follow through the [Preparing configuration files](configuration-files.md) section.

### 2. Setup MySQL Databases

Please follow through the [MySQL Setup](mysql-setup.md) section.

### 3. Configure and customize components

Please carefully follow through each component configuration instructions:

* [Website](Frontend.md)
* [Keycloak](Keycloak.md)
* [CMS](CMS.md)
* [CDN](CDN.md)
* [Machine Translation](machine-translation.md)
* [Help Center](Docs.md)
* [Translation Memory (NECTM)](NECTM.md)

### 4. Adjust for Production

See the [Tuning for Production](production-tuning.md) section for important information about scaling workers.

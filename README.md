# NLTP Deployment

## Introduction

The [National Language Technology Platform](https://www.nltp-info.eu/) (NLTP) lets you use the latest AI-powered language technology tools for free! Translate documents, make your website multi-language, use consistent terminology, and much more. [Sign up](https://www.nltp-info.eu/contacts) To get started with the National Language Technology Platform.

NLTP is a CEF-funded project:

* Agreement number: INEA/CEF/ICT/A2020/2278398
* Action No: 2020-EU-IA-0082

## About Repository

This repository provides manifest files and instructions to run NLTP on Kubernetes.

There is also a Gitbook version available for this documentation at [tilde.gitbook.io/nltp-deployment](https://tilde.gitbook.io/nltp-deployment/) that offers a more user-friendly interface and search feature.

## Architecture

![architecture](instructions/attachments/NLTP\_Architecture.svg)

## Infrastructure requirements

### Minimum requirements

Provided deployment instructions are tested on:

* Kubernetes 1.24/stable (microk8s)
* 2x Nodes with 32GB RAM, 8vCPU (Intel x86\_64), 150GB HDD, enabled IPv4 & IPv6 support, NFS shared storage.
* OS: Ubuntu 20.04.4 LTS

**Important note:** ARM CPU is not supported! Do not use AWS Graviton or similar node types with ARM architecture.

### Requirements for Production

When running in production, the Memory and CPU required will depend on the specific setup (number of translation workers) - see [Tuning for production](instructions/production-tuning.md) section.

Using SSD storage is highly recommended to ensure the best performance.

It's also highly recommended to use an external managed MySQL database instead of deploying it on the cluster using provided MySQL manifest.

#### Maintenance requirements

The responsible party for maintenance should be setting up and testing backup systems, and maintaining monitoring and logs systems.

* **Backups** - Backing up each storage is a critical part of maintenance. Ensure that all data is backed up at regular intervals and tested occasionally.
* **Monitoring & Logs** - Additional resources should be reserved for monitoring and logs components, which are out of the scope of this deployment and instructions.

## Domains and Certificates

See the [Domains and Certificates](instructions/domains-and-certificates.md) section for information regarding required domain names and TLS/SSL certificates.

## Deployment Instructions

See the [Deployment Instructions](instructions/README.md) section.

## Keycloak user management

See the [Keycloak user management](instructions/keycloak-user-management.md) section.

## Overview of Components and requirements

The NLTP deployment consists of the following containerized components that are included in this deployment:

| **Component**                 | **CPU Request** | **Memory Request** | **CPU Limit** | **Memory Limit** | **Storage requirements**        | **Comment**                                  | **Scaling supported** |
| ----------------------------- | --------------- | ------------------ | ------------- | ---------------- | ------------------------------- | -------------------------------------------- | --------------------- |
| access-management-service     | 10m             | 250Mi              | 500m          | 500Mi            | n/a                             |                                              | Yes                   |
| cat-amq                       | 10m             | 330Mi              | 1             | 1Gi              | n/a                             |                                              | No                    |
| cat-nectm                     | 1               | 1Gi                | 2             | 2Gi              | n/a                             |                                              | No                    |
| cat-nectm-elasticsearch       | 1               | 1Gi                | 2             | 2Gi              | 32Gi \[nectm-elasticsearch-pvc] |                                              | No`*`                 |
| cat-nectm-postgres            | 1m              | 50Mi               | 100m          | 256Mi            | 10Gi \[nectm-postgres-pvc]      |                                              | No`*`                 |
| cat-redis                     | 10m             | 20Mi               | 100m          | 256Mi            | 2Gi \[redis-data-pv-claim]      |                                              | No`*`                 |
| cat-tool                      | 50m             | 1600Mi             | 4             | 2200Mi           | 20Gi \[cat-tool-data-pv-claim]  |                                              | No                    |
| cat-tool-antivirus            | 1               | 256Mi              | 1             | 256Mi            | n/a                             | Anitivirus proxy for cat-tool                | Yes                   |
| cdn                           | 10m             | 64Mi               | 200m          | 128Mi            | 5Gi \[cdn-storage]              | If using local CDN                           | Yes                   |
| clamav                        | 1               | 4Gi                | 1             | 4Gi              | n/a                             | Anitivirus                                   | Yes                   |
| configuration-service         | 10m             | 250Mi              | 500m          | 500Mi            | n/a                             |                                              | Yes                   |
| docs                          | 10m             | 100Mi              | 500m          | 600Mi            | n/a                             |                                              | Yes                   |
| file-converter                | 10m             | 63Mi               | 1             | 512Mi            | n/a                             |                                              | Yes                   |
| file-translation-antivirus    | 1               | 256Mi              | 1             | 256Mi            | n/a                             | Anitivirus proxy for file-translation        | Yes                   |
| file-translation-service      | 10m             | 256Mi              | 1             | 512Mi            | 20Gi \[file-service-storage]    |                                              | Yes                   |
| file-translation-worker       | 10m             | 100Mi              | 1             | 3Gi              | n/a                             |                                              | Yes                   |
| filters                       | 100m            | 175Mi              | 1             | 3Gi              | n/a                             |                                              | Yes                   |
| frontend                      | 10m             | 35Mi               | 500m          | 256Mi            | n/a                             |                                              | Yes                   |
| frontend-cms                  | 10m             | 210Mi              | 500m          | 512Mi            | 5Gi \[cms-data-pv-claim]        |                                              | Yes                   |
| keycloak                      | 500m            | 804Mi              | 1             | 1400Mi           | n/a                             | Authenticaton                                | No`*`                 |
| mysql                         | 1               | 0                  | 0             | 0                | 20Gi \[mysql-data]              | Only for test environment                    | No`*`                 |
| service-broker                | 10m             | 1200Mi             | 500m          | 2Gi              | n/a                             |                                              | Yes                   |
| text-translation-service      | 10m             | 256Mi              | 1             | 512Mi            | n/a                             |                                              | Yes                   |
| text-translation-worker (CPU) | 1               | 1G                 | 1             | 5G               | 30Gi \[mt-system-storage]       | For each MT system                           | Yes                   |
| text-translation-worker (GPU) | 200m            | 1G                 | 1             | 5G               | 30Gi \[mt-system-storage]       | For each MT system, additional 1-2GB GPU RAM | Yes                   |
| tm-service                    | 1m              | 128Mi              | 1             | 512Mi            | n/a                             |                                              | Yes                   |
| translation-system-api        | 10m             | 512Mi              | 500m          | 1Gi              | n/a                             |                                              | Yes                   |
| web-proxy                     | 10m             | 128Mi              | 1             | 512Mi            | n/a                             |                                              | Yes                   |
| website-translation-service   | 10m             | 230Mi              | 1             | 512Mi            | n/a                             |                                              | Yes                   |

`*` Scaling is not supported out of the box but can be configured. Refer to the official documentation for more information.

#### GPU Support

**Note**: `text-translation-worker (GPU)` - requires Kubernetes with supported NVIDIA GPU-enabled cluster node (GPU must support CUDA 10).

* Each custom NLTP MT system running on GPU requires up to 2GB of GPU memory.
* Supported NVIDIA GPU architectures: `Maxwell, Pascal, Volta, Turing`

## Changelog

* Oct 17, 2022 (2022-1 release) - Initial release.
* Oct 18, 2022 (2022-2 release) - Minor changes.
* Oct 24, 2022 (2022-3 release) - Minor changes.
* Nov 10, 2022 (2022-4 release) - Minor changes.
* Feb 3, 2023 (2023-1 release) - **The release contains breaking changes, please see** [**2023-1-release.md**](instructions/upgrade/2023-1-release.md) **for upgrade instructions.**
* Feb 28, 2023 (2023-2 release) - Minor changes, bugfixes - containers image version changes & updated 3rd party requirements in [deploy.sh](deploy.sh)
* Mar 16, 2023 (2023-3 release) - Minor changes, bugfixes and updated instructions - please see updated instructions regarding [platform user roles and user management in Keycloak](instructions/Keycloak.md) and [API Keys](instructions/api-keys.md) notes.
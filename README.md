# Introduction

This repository provides a minimal example of Kubernetes configuration to run the NLTP. Configuration files are
only provided to illustrate how communication between components should be set up and should be revised before any
deployments.

The NLTP consists of the following containerized components:

- Existing standard components:
    - [RabbitMQ message broker](https://www.rabbitmq.com/)
    - RabbitMQ Knative eventing
    - [MySQL v8](https://www.mysql.com/)
    - Postgres v14
    - Elasticsearch v6
    - Redis v6
    - Cert manager
    - [Clammit antivirus proxy](https://github.com/ifad/clammit)
    - [ClamAV antivirus](https://www.clamav.net/)

- Custom NLTP components:
    - cat-tool-backend
    - file-converter-service
    - file-translation-service
    - file-translation-worker
    - matecat-activemq
    - matecat-filters
    - nltp-docs
    - nltp-website
    - text-translation-service
    - text-translation-worker
    - translation-memory-service
    - translation-system-service
    - web-proxy
    - website-translation-service

- Integrated components:
    - [NECTM](https://www.nec-tm.eu/wp-content/uploads/2020/03/NEC-TM-Technical-description.pdf)
    - [Keycloak](https://www.keycloak.org/)
    - [Strapi](https://strapi.io/)
    - [Docusaurus](https://docusaurus.io/)

# Infrastructure requirements
## Minimum requirements
Provided deployment instructions are tested to work with following minimum requirements:
- 32GB RAM, 16vCPU
- Ubuntu 20.04.4 LTS
- Kubernetes 1.24/stable (microk8s)
- microk8s-hostpath HDD storage

## Recommended requirements
Recommended requirements when running in production environment:
- At least 64GB RAM, 32vCPU
- Replicated MySQL v8 database
- SSD Storage

## Component resources overview
| **Component**                 | **CPU Request** | **Memory Request** | **CPU Limit** | **Memory Limit** | **Storage requirements**       | **Comment**                               | **Scaling supported** |
| ----------------------------- | --------------- | ------------------ | ------------- | ---------------- | ------------------------------ | ----------------------------------------- | --------------------- |
| tm-service                    | 1m              | 128Mi              | 1             | 512Mi            | n/a                            |                                           | Yes                   |
| docs                          | 10m             | 50Mi               | 500m          | 256Mi            | n/a                            |                                           | Yes                   |
| web-proxy                     | 10m             | 128Mi              | 1             | 512Mi            | n/a                            |                                           | Yes                   |
| text-translation-worker (CPU) | 1               | 1G                 | 1             | 2G               | 30Gi [mt-system-storage]       | For each MT system                        | Yes                   |
| text-translation-worker (GPU) | 200m            | 1G                 | 1             | 2G               | 30Gi [mt-system-storage]       | For each MT system, including 2GB GPU RAM | Yes                   |
| filters                       | 100m            | 175Mi              | 1             | 512Mi            | n/a                            |                                           | Yes                   |
| file-converter                | 10m             | 63Mi               | 1             | 512Mi            | n/a                            |                                           | Yes                   |
| file-translation-worker       | 10m             | 200Mi              | 1             | 1Gi              | n/a                            |                                           | Yes                   |
| translation-system-api        | 10m             | 512Mi              | 500m          | 1Gi              | n/a                            |                                           | Yes                   |
| text-translation-service      | 10m             | 256Mi              | 1             | 512Mi            | n/a                            |                                           | Yes                   |
| keycloak                      | 500m            | 804Mi              | 1             | 1400Mi           | n/a                            |                                           | No`*`                 |
| frontend-cms                  | 10m             | 210Mi              | 500m          | 512Mi            | 5Gi [cms-data-pv-claim]        |                                           | Yes                   |
| file-translation-service      | 10m             | 256Mi              | 1             | 512Mi            | 20Gi [file-service-storage]    |                                           | Yes                   |
| website-translation-service   | 10m             | 230Mi              | 1             | 512Mi            | n/a                            |                                           | Yes                   |
| frontend                      | 10m             | 35Mi               | 500m          | 256Mi            | n/a                            |                                           | Yes                   |
| cat-tool                      | 50m             | 1600Mi             | 4             | 2200Mi           | 20Gi [cat-tool-data-pv-claim]  |                                           | No                    |
| cat-amq                       | 10m             | 330Mi              | 1             | 1Gi              | n/a                            |                                           | No                    |
| cat-redis                     | 10m             | 20Mi               | 100m          | 256Mi            | 2Gi [redis-data-pv-claim]      |                                           | No`*`                 |
| cat-nectm                     | 1               | 1Gi                | 2             | 2Gi              | n/a                            |                                           | No                    |
| cat-nectm-postgres            | 1m              | 50Mi               | 100m          | 256Mi            | 10Gi [nectm-postgres-pvc]      |                                           | No`*`                 |
| cat-nectm-elasticsearch       | 1               | 1Gi                | 2             | 2Gi              | 32Gi [nectm-elasticsearch-pvc] |                                           | No`*`                 |
| mysql                         | 1               | 0                  | 0             | 0                | 20Gi [mysql-data]              | Only for test environment                 | No`*`                 |
| clamav                        | 1               | 4Gi                | 1             | 4Gi              | n/a                            | Anitivirus                                | Yes                   |
| cat-tool-antivirus            | 1               | 256Mi              | 1             | 256Mi            | n/a                            | Anitivirus proxy for cat-tool             | Yes                   |
| file-translation-antivirus    | 1               | 256Mi              | 1             | 256Mi            | n/a                            | Anitivirus proxy for file-translation     | Yes                   |
| cdn                           | 10m             | 64Mi               | 200m          | 128Mi            | 5Gi [cdn-storage]              | If using local CDN                        | Yes                   |

`*` Not supported with default configuration, but can be configured.
  
### GPU Support
**Note**: `text-translation-worker (GPU)` - requires Kubernetes with supported NVIDIA GPU enabled cluster node (GPU must support CUDA 10).
* Each custom NLTP MT system running on GPU requires up to 2GB of GPU memory.
* Supported NVIDIA GPU architectures: `Maxwell, Pascal, Volta, Turing`

# Deployment Instructions
- [Test environment deplyoment](instructions/Deployment.md)


# Machine Translation (MT) systems
## Custom NLTP Machine Translation system import Instructions

- [MT system import](instructions/system-import/mt-system-import.md)
- [MT system removal](instructions/system-import/mt-system-removal.md)
- [MT system startup](instructions/system-import/mt-system-startup.md)

## eTranslation Machine Translation systems
eTranslation is an online machine translation service provided by the European Commission (EC).
* Please note, the eTranslation web service is asynchronous. This means that the client sends a translation request and is notified later when the text snippet is translated. Make sure that `web-ingress` (main domain) is correctly exposed to internet and can receive traffic from eTranslation servers.

To use eTranslation MT systems, please update 2 entries in `config-sample\secrets.yaml` file:
```
  etranslation_username: "MY_ETRANSLATION_USERNAME"
  etranslation_password: "MY_ETRANSLATION_PASSWORD"
```
Replace `MY_ETRANSLATION_USERNAME` and `MY_ETRANSLATION_PASSWORD` with your *NLTP* eTranslation account credentials.

If you don't have an eTranslation account, please write to eTranslation Helpdesk: [help@cefat-tools-services.eu](mailto:help@cefat-tools-services.eu), stating your:

* Contact information:
    * Name;
    * Affiliation;
    * Email;
* Description:
    * Objectives of the project;
    * Expected number of requests per day;
    * Expected size of queries.

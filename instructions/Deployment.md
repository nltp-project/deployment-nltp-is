# 0. Prerequisitces

## Platform setup

This sample requires an existing Kubernetes cluster with
the [NGINX ingress controller](https://kubernetes.github.io/ingress-nginx/deploy/) where the application can be deployed
to. For more information about setting up a cluster, please
see [Kubernetes documentation](https://kubernetes.io/docs/setup/). We also assume that the user
has [kubectl](https://kubernetes.io/docs/tasks/tools/) configured to connect to the cluster. For testing or development 
purposes, setting up [minikube](https://minikube.sigs.k8s.io/docs/start/) and enabling the 
[ingress controller](https://kubernetes.github.io/ingress-nginx/deploy/#minikube) should be sufficient.

Make sure you are using the correct Kubernetes cluster version.

List of preqreuisites:
- Cert Manager
- Knative eventing
  Rabbitmq eventing broker and source
- Rabbitmq cluster operator
- Rabbitmq messagin topology operator

- Read Knative RabbitMQ Broker prerequisites: https://knative.dev/docs/eventing/brokers/broker-types/rabbitmq-broker/#prerequisites

Install 3rd party resources. Refer to [deploy.sh](../deploy.sh) file for correct procedure.

## Domains and TLS/SSL Certificates

### List of required domain names:
- nltp.example.com - Base domain for Frontend and backend
- nltp-auth.example.com - For Keycloak auth API and admin interface
- nltp-cms.example.com - For Frontend CMS API and admin interface
- nltp-nectm.example.com - Needed only during setup to import translation memory
- nltp-cdn.example.com - If using local CDN (See [CDN.md](./CDN.md))

If you have a separate NLTP dedicated domain name, for example `nltp.mt`, then you could use the following naming convention:
- nltp.mt / www.nltp.mt
- auth.ntlp.mt
- cms.nltp.mt
- nectm.nltp.mt
- cdn.nltp.mt

Note: These example `*.example.com` domain names listed above are used in deployment documentation, sample configuration (configmaps, secrets and ingresses files in [config-sample](../config-sample/) folder) and in the Strapi [(cms.sql)](../instructions/sql/cms.sql) DB backup file.

### TLS/SSL Certificates:
For securing domains you can either use multiple individual certificate for each domain or single wildcard certificate, or setup [cert-manager](https://cert-manager.io/docs/) to generate certificates automatically (for example [Let's Encrypt](https://letsencrypt.org/) issued certificates).

- Example of using TLS/SSL certificate [(TLS secret)](https://kubernetes.io/docs/concepts/configuration/secret/#tls-secrets) in Kubernetes ingress YAML:
```
  tls:
  - hosts:
    - nltp.example.com  # Domain name to secure with TLS/SSL certificate
    secretName: example-cert  # TLS secret used to secure this domain name
```
Note: Certificate management is out of scope of this documentation.

# 1. Prepare configuration files

- Make copy of `config-sample` folder, e.g. `config-test`.
- Check all files for any lines commented with `# TODO` as those lines refer to configuration that is likely different
  for different deployments.
- Apply configuration files described in "deploy.sh"

This should be sufficient to have the application running. However, there are other configuration aspects that may be relevant depending on the deployment requirements:

- In case a namespace other than `default` is used, adding the `metadata.namespace` value to each configuration file. Additional configuration for RabbitMQ sources might be necessary.
- Configuring additional replicas and revising resource limits/requirements for each component depending on the expected workload.
- Revising the persistent volume sizes for depending on expected workload (storage.yaml) and make sure to define storageClassName for each PVC.
- Configuring maximum file upload size in the ingress configuration (`nginx.ingress.kubernetes.io/proxy-body-size`).
- Using specific known compatible image versions instead on `latest`.

# 2. Set up MySQL users, databases and import data
Edit file `sql/databases.sql` according to your configuration files.

If using non-default database names, make sure to also edit `sql/cat-tool_db.sql`, `cat-tool_conversations_log_db.sql`, `cms.sql` files accordingly.

Open file `sql/cms.sql` using text editor. Using find/replace change all occurrences of `example.com` according to your environment.

Import SQL files:
- `kubectl exec deploy/mysql -i -- mysql -e "show databases;"` # verify connection
- `kubectl exec deploy/mysql -i -- mysql < sql/databases.sql` # create users and databases
- `kubectl exec deploy/mysql -i -- mysql < sql/cat-tool_db.sql` # import cat-tool DB
- `kubectl exec deploy/mysql -i -- mysql < sql/cat-tool_conversations_log_db.sql` # import cat-tool DB
- `kubectl exec deploy/mysql -i -- mysql < sql/cms.sql` # import cms DB

Note: Provided MySQL server deployment is only example and is not suited for production use (it doesn't support high-availablity or zero-downtime).

# 3. Configure applications

Follow instructions for each component that needs to be configured:
- [Keycloak](./Keycloak.md)
- [NECTM](./NECTM.md)
- [CMS](./CMS.md)
- [End user Documentation](./Docs.md)
- [CDN](./CDN.md)
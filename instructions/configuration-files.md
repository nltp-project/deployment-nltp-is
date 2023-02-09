# Preparing Configuration files

## Preparing configuration files

* Make copy of `config-sample` folder, e.g. `config-test`.
* Check all files for any lines commented with `# TODO` as those lines refer to a configuration that is likely different for different deployments.
* When deploying, apply all files in the configuration folder.
* After all the components are deployed, you will need to generate an API key for some components and update secret values. See [Configure component API Keys](api-keys.md) section for more information.

#### Other Settings

There are other configuration aspects that may be relevant depending on the deployment requirements:

* In case a namespace other than `default` is used, adding the `metadata.namespace` value to each configuration and component file. Additional configuration for RabbitMQ sources might be necessary. Please note that solution has not been tested on non `default` namespace.
* Revising the persistent volume sizes depending on the expected workload (`storage.yaml`) and make sure to define the appropriate storageClassName for each PVC.
* Modify the maximum file upload size in the ingress configuration (`nginx.ingress.kubernetes.io/proxy-body-size`).

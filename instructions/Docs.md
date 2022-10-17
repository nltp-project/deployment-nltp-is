# Customizing docs

End user documentation is built using [Docusaurus 2](https://docusaurus.io/), a modern static website generator.

In order to customise content you need to fork [nltpproject/docs](https://github.com/nltp-project/docs) repository, make changes and rebuild using provided Dockerfile.

After uploading new container to container registry, change image name and tag in `components/docs.yaml` file accordingly and redeploy.

Refer to [Docusaurus 2 official documentation](https://docusaurus.io/docs) regarding content customization.
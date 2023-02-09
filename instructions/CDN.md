# CDN

CDN is required to host assets that need to be accessed by 3rd parties. Provided CDN in this repo is a simple nginx webserver with mounted storage that contains files to be hosted. If it is more convenient you can instead utilize CDN provided by your hosting provider (e.g. Azure Files, Amazon S3), in such case remove the file `components/cdn.yaml` and corresponding Ingress configuration.

Recommended file structure:

```
/<version>/widget.js
```

Example:

```
/1.0.0/widget.js
/1.0.1/widget.js
/latest/widget.js
```

If using `latest` folder, manually copy files to both the latest and specific version folders.

## Copying files

You can copy the file using the following command:

```
kubectl cp <filename> <cdn-pod-name>:/usr/share/nginx/html/<filename>
```

Upload and verify example:

```
kubectl cp file.txt cdn-59bcc7564d-xcg47:/usr/share/nginx/html/file.txt # Copy file
kubectl port-forward deployments/cdn 8080:80 -n default # Forward port for testing
curl http://localhost:8080/file.txt # Should return file contents correctly
```

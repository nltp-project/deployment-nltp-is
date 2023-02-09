# Custom MT System Import

### Acquire translation systems

* Acquire your translation system URL: `https://nltpsystems.blob.core.windows.net/systems/smt-xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx.tgz` (for each system)
* Make sure the URL is accessible from within your K8s cluster - upload to an intranet or adjust the firewall if necessary.

### Adjust import job manifest file:

Replace all occurrences of `xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx` with your system id in [system-import-job.yaml](../../system-import/system-import-job.yaml)

Run import job:

```
kubectl apply -f system-import-job.yaml -n default
```

Obtain imported system id for system startup from job logs:

```
kubectl logs job.batch/system-import-job-xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx -c mt-system-import-job | grep "System id for system startup"
```

Sample output:

```
2022-12-27 15:24:51,038 INFO     [__main__:import_system:112] System id for system startup: yyyyyyyy-yyyy-yyyy-yyyy-yyyyyyyyyyyy
```

Continue with [mt-system-startup.md](mt-system-startup.md) instructions using new ID: `yyyyyyyy-yyyy-yyyy-yyyy-yyyyyyyyyyyy`.

# Tuning for production

## Increase worker capacity

In order to allow parallel processing for the best performance in production, worker capacity must be increased accordingly as each worker can process a single task at a time.

When scaling replicas, take into account the resources required for each worker. Refer to the [Overview of Components and requirements](../#overview-of-components-and-requirements) table and make sure there are enough resources available on the cluster. If there will be insufficient resources, pods will fail to start and stay in the "Pending" state.

### Scaling File Translation Worker

Use `kubectl` command to scale file translation worker:

```bash
kubectl scale deployment file-translation-worker --replicas 3
```

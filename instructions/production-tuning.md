# Tuning for production

## Increase worker capacity

In order to allow parallel processing for the best performance in production, worker capacity must be increased accordingly as each worker can process a single task at a time.

When scaling replicas, take into account the resources required for each worker. Refer to the [Overview of Components and requirements](../#overview-of-components-and-requirements) table and make sure there are enough resources available on the cluster. If there will be insufficient resources, pods will fail to start and stay in the "Pending" state.

### Scaling File Translation Worker

Use `kubectl` command to scale file translation worker:

```bash
kubectl scale deployment file-translation-worker --replicas 3
```

Aditionally you need to scale File Translation event source that is requesting messages from RabbitMQ. 

You can change that in `components/file-translation-event-source.yaml`

```YAML
spec:
  rabbitmqResourcesConfig:
    parallelism: 3 # How much messages are sent to workers from RabbitMQ
```
---
## Configure translated document expiration

With the default configuration translated document will be available for download for 7 hours, after that it will be deleted.

To adjust this, please update and reapply `components/file-translation-service.yaml`
```YAML
            # Metadata expiration
            - name: Configuration__UserGroupMetadataExpiration__DefaultFileTranslationGroupExpiration
              value: "7:00:00" # Expire in 7h. Additional examples - expire in 1 day: "1.00:00:00", expire in 30min: "0:30:00"
```
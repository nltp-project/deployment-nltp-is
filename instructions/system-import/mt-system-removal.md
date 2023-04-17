# Custom MT System Removal

Note: You can find all imported systems by running SQL Query:

```
SELECT * FROM nltp_translation_systems.Systems where SystemVendor='0';
```

1. Acquire system id: `yyyyyyyy-yyyy-yyyy-yyyy-yyyyyyyyyyyy` (This is the imported system's id).
2. Stop the system by removing deployment (`kubectl delete deployment text-translation-worker-yyyyyyyy-yyyy-yyyy-yyyy-yyyyyyyyyyyy`), and removing the manifest yaml file.
3. Adjust removal container [system-removal-job.yaml](system-removal-job.yaml):
   * Replace `yyyyyyyy-yyyy-yyyy-yyyy-yyyyyyyyyyyy` with imported system id.
4.  Run removal job:

    ```
    kubectl apply -f system-removal-job.yaml
    ```

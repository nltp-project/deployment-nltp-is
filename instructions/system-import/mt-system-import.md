# MT system import

1. Acquire exported MT system archive: `smt-xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx.tgz`
2. Copy archive to `mt-system-storage` (PersistentVolumeClaim)
3. Adjust import container [system-import-job.yaml](system-import-job.yaml):
    
    - Set imported system ID by changing environment variable: `SYSTEM_ID`. 
    System id is name of the archive for example: `smt-xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx`

4. Run import job:
    ```Shell
    kubectl apply -f system-import-job.yaml
    ```

5. Save imported system id for system startup configuration from logs (only first system import)
    ```
    System service response: {'id': 'yyyyyyyy-yyyy-yyyy-yyyy-yyyyyyyyyyyy', ...}
    ```
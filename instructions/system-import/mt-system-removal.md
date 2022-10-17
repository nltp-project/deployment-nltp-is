# MT system removal

1. Acquire system id: `yyyyyyyy-yyyy-yyyy-yyyy-yyyyyyyyyyyy`
    > This is imported system's id
2. Stop system by demoving deployment [mt-system-startup.md](mt-system-startup.md)
3. Adjust removal container [system-removal-job.yaml](system-removal-job.yaml):
    
    - Set removal system ID by changing environment variable: `SYSTEM_ID`

4. Run removal job:
    ```Shell
    kubectl apply -f system-removal-job.yaml
    ```

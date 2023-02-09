# Custom MT System Startup

1.  Acquire imported system id: `yyyyyyyy-yyyy-yyyy-yyyy-yyyyyyyyyyyy`

    > This is imported system id in import process
2. Adjust container [text-translation-worker.yaml](../../system-import/text-translation-worker.yaml):
   * Change deployment and service names. Change `text-translation-worker` to include system id and prefix 'text-translation-worker' `text-translation-worker-yyyyyyyy-yyyy-yyyy-yyyy-yyyyyyyyyyyy`
   * Set system ID by changing environment variable: `SYSTEM` = `yyyyyyyy-yyyy-yyyy-yyyy-yyyyyyyyyyyy`
   * Update env variable `WORKDIR` with systemId (last part) `/opt/letsmt-tmp/systems/yyyyyyyy-yyyy-yyyy-yyyy-yyyyyyyyyyyy`
3.  Run system job:

    ```
    kubectl apply -f text-translation-worker.yaml
    ```
4.  \[Optionally] Scale text translation worker

    ```
    kubectl scale --replicas=<replicas> deployment <deployment-name>
    ```
5.  \[Optionally] Remove the system

    ```
    kubectl delete -f text-translation-worker.yaml
    ```

# 2023-4-release.md

Note: Only follow these instructions if you already have set up a working platform before this release. If you are setting up from scratch just follow the main setup guide.

---

## Changes:
* Added localization for components.

* Changed component list:

  |**status**| **component yaml name**           | **image name**             |**significant changes**                                                                          |
  |----------|-----------------------------------|----------------------------|-------------------------------------------------------------------------------------------------|
  | updated  | `access-management-service.yaml`  | access-management-service  | improved error handling for Keycloak configuration errors                                       |
  | updated  | `keycloak.yaml`                   | auth-keycloak-nltp         | Keycloak 21.0.2, added localization for ET, IS languages, please see "Localization" section of [Keycloak.md](../Keycloak.md#localization) for configuration details |
  | updated  | `file-translation-service.yaml`   | file-translation-service   | fixed translated files expiration configuration, please see [production-tuning.md](../production-tuning.md#configure-translated-document-expiration) for configuration details |
  | updated  | `frontend.yaml`                   | nltp-website               | added localization for ET, IS, MT languages, toggle visibility for cookie consent reject button |
  | updated  | `frontend-cms.yaml`               | strapi-cms                 | toggle visibility for cookie consent reject button                                              |
  | updated  | `text-translation-service.yaml`   | text-translation-service   | configuration-service dependency removed                                                        |
  | updated  | `translation-system-service.yaml` | translation-system-service | configuration-service dependency removed                                                        |
  | updated  | `website-translation-service.yaml`| website-translation-service| configuration-service dependency removed                                                        |
  | *removed*| `configuration-service.yaml`      | configuration-service      | component removed                                                                               |
  | *removed*| `web-proxy.yaml`                  | web-proxy                  | component removed                                                                               |

  In this relesae some unnecessary services has been removed, some general bug fixes and improvements implemented.

  >NOTE: Make sure to merge your existing deployment files with the new ones.

* Improved instructions

### Components upgraded:
 **Keycloak** was upgraded from version `20.0.1` to `21.0.2`.
>NOTE: Please make sure to backup your Keycloak DB before latest Keycloak container version deployment.

### Components removed:
1. web-proxy  (delete - `/components/web-proxy.yaml`)

   Run these commands to remove "web-proxy" from your kubernetes cluster:
   ```
   kubectl delete -n default deployment web-proxy
   kubectl delete -n default service web-proxy
   ```

2. configuration-service (delete - `/components/configuration-service.yaml`)
   
   Make sure you have the latest deployment yamls merged and deployed it will remove environment variable:
   ```yaml
     # Configuration service
     - name: Services__Configuration__Uri
       value: "http://configuration-service"
   ```
   From these components:
   ```
    /components/text-translation-service.yaml
    /components/translation-system-service.yaml
    /components/website-translation-service.yaml
   ```

  - Run these commands to remove "configuration-service" from your kubernetes cluster:
    ```bash
    kubectl delete -n default deployment configuration-service
    kubectl delete -n default service configuration-service
    kubectl delete -n default secret configuration-service
    ```

  - And delete MySQL DB - `nltp_configuration`:
    ```bash
    kubectl exec deploy/mysql -i -- mysql -e "drop database nltp_configuration;" # change DB name accordingly
    ```

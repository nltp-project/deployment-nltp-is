# Configure component API Keys

Website and Website translation components require an API key that must be created and configured in order to work correctly.

*NOTE: Make sure that `access-management-service`, `service-broker` and `keycloak` Pods are successfully configured and running before you attempt to create an API key.*

Follow [Creating API Key](create-api-key.md) instructions to create two API keys:

Additionally when obtaining Authentication token, it would be better to use separate user to impersonate which has single user group `__reserved__`. 
This user should only be used when creating these api keys. Furthermore, `__reserved__` user group should not contain any regular users, for regular users not be able to delete or modify these api keys.

* "website" with restricted domain "nltp.example.com"
* "website-translation-service" without domain restriction

When API Keys are generated, place them in the `secrets.yaml` configuration file, update Secret values - "X_API_KEY" for "frontend-secret" (website) and "Configuration__ServiceAPIKey" for "website-translation-service".

Make sure to restart `website` and `website-translation-service` Pods in order for changes to take effect!

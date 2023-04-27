# Keycloak

> NOTE: After the first deployment of Keycloak, please do some basic checks to ensure that rest of configuration will work:
* Make sure that after first deployment of Keycloak did not produced any error messages in Keylcoak pod logs (make sure that realm Main was imported and admin user was added successfully).
* Go to *Keycloak Administration Console*: `https://nltp-auth.example.com/auth/admin/` and enter admin user credentials from your `secrets.yaml` file. Use your values of `KEYCLOAK_USER` and `KEYCLOAK_PASSWORD` entries under "keycloak-secret". After signing in, switch from `master` to `Main` Realm, then select `Clients` and make sure that there are *access-management-service* & *api-impersonator* among the other Clients.

---
Several tasks must be completed to ensure correct and secure Keycloak operation.

## Update Domains

* Go to: `https://nltp-auth.example.com/auth/admin/master/console/#/Main/clients`
* Replace each `*.example.com` occurrence with your domain name.

## Reset Default Keys

Generate and replace the Public key with the new one, and disable the old key.

Follow: [Rotating keys documentation](https://www.keycloak.org/docs/latest/server\_admin/#rotating-keys)

Update `JWT_KEY_KEYCLOAK` value in file `configmaps.yaml` with the new public key. Make sure to deploy the new configmap and restart related pods:

* cat-tool
* service-broker
* tm-service
* website-translation-service

## SMTP Server Configuration

Keycloak sends emails to users to verify their email addresses, when they forget their passwords, or when an administrator needs to receive notifications about a server event. To enable Keycloak to send emails, you provide Keycloak with your SMTP server settings.

Follow: [Configuring email for a realm](https://www.keycloak.org/docs/latest/server\_admin/#\_email)

## User management
See the [Keycloak user management](keycloak-user-management.md) section

## Customizing theme

In order to customize the theme you need to rebuild the container with the new theme. After uploading the new container to the container registry, change the image name and tag in `components/keycloak.yaml` file accordingly and redeploy. Refer to [Keycloak documentation](https://www.keycloak.org/docs/latest/server\_development/#\_themes) about customizing the theme.

## Integrating with the national authentication system

* Go to Keycloak admin panel
* Select "Main" realm
* Go to "Configure > Identity providers" and press "Add provider > OpenID Connect v1.0"
* You will see the field "Redirect URI" - you must provide this URL to your OIDC provider \[`https://nltp-auth.example.com/auth/realms/Main/broker/oidc/endpoint`]
* Fill mandatory fields: Discovery endpoint, Client ID, Client Secret
* Adjust other parameters according to your OIDC provider. Press "Add".

Depending on the provider configuration you might need to add an additional `email` and `profile` scopes.

After adding your new OIDC provider, configure provider Mappers - create a new mapper to add default *"MT Group User"* role for all users authenticated with national authentication system.
Example mapper configuration, adjust as necessary for your implementation:
 * Open your OIDC provider, select Mappers tab and press "Add mapper"
 * Give a name for this mapper, e.g. "Add Default Role", leave "Sync mode override" as "Inherit" or adjust as necessary
 * Select "Mapper type" - "Hardcoded Role", then click on "Select Role" and select "MT Group user" role. Press "Save".

NOTE: Make sure to update Authentication configuration for the Keycloak "Main" realm - check "Required actions" tab, make sure to disable "Update Password" under "Set as default action" column.

## Localization

To configure desired locales, go to "Realm settings > Localization" and set "Internationalization" to "Enabled". After internationalization is enabled, select your wanted locales in "Supported locales".

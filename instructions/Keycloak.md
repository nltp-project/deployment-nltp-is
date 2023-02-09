# Keycloak

Several tasks must be completed to ensure correct and secure Keycloak operation.

## Update Domains

* Go to: `https://nltp-auth.example.com/auth/admin/master/console/#/Main/clients`
* Replace each `*.example.com` occurrence with your domain name.

## Reset Default Keys

Generate and replace the Public key with the new one, and disable the old key.

Follow: [Rotating keys documentation](https://www.keycloak.org/docs/latest/server\_admin/#rotating-keys)

Update `JWT_KEY_KEYCLOAK` value in file `configmaps.yaml` with the new public key. Make sure to deploy the new configmap and restart related pods -

* cat-tool
* tm-service
* file-translation-service
* website-translation-service

## SMTP Server Configuration

Keycloak sends emails to users to verify their email addresses, when they forget their passwords, or when an administrator needs to receive notifications about a server event. To enable Keycloak to send emails, you provide Keycloak with your SMTP server settings.

Follow: [Configuring email for a realm](https://www.keycloak.org/docs/latest/server\_admin/#\_email)

## Create users

Go to: `https://nltp-auth.example.com/auth/admin/master/console/#/Main/users` Press "Add User" and enter new user details.

* Username and email must be the same e-mail address.
* Select the “main” user group from the Groups dropdown.
* Set “User Enabled” and “Email Verified” to “ON” and click “Save”.

To set a password go to the Credentials tab and press "Set password"

Go to user roles and assign a new role "MT Group user", otherwise user will not have access to CAT Tool and Website translation.

## Customizing theme

In order to customize the theme you need to rebuild the container with the new theme. After uploading the new container to the container registry, change the image name and tag in `components/keycloak.yaml` file accordingly and redeploy. Refer to [Keycloak documentation](https://www.keycloak.org/docs/latest/server\_development/#\_themes) about customizing the theme.

## Integrating with the national authorization system

* Go to keycloak admin panel
* Select "Main" realm
* Go to "Configure > Identity providers" and press "Add provider > OpenID Connect v1.0"
* You will see the field "Redirect URI" - you must provide this URL to your OIDC provider \[`https://nltp-auth.example.com/auth/realms/Main/broker/oidc/endpoint`]
* Fill mandatory fields: Discovery endpoint, Client ID, Client Secret
* Adjust other parameters according to your OIDC provider. Press "Add".

Depending on the provider configuration you might need to add an additional `email` and `profile` scopes.

# Keycloak
 
Several tasks must be completed to ensure correct and secure Keycloak operation.
## Update Domains
- Go to: https://<NLTP_AUTH_DOMAIN>/auth/admin/master/console/#/Main/clients
- Update domains accordingly.

## Reset Default Keys
Generate and replace Public key with the new one, disable the old key.

Follow: [Rotating keys documentation](https://www.keycloak.org/docs/latest/server_admin/#rotating-keys)

Update `JWT_KEY_KEYCLOAK` value in file `configmaps.yaml` with the new public key. Make sure to deploy new configmap and restart related pods - 
- cat-tool
- tm-service
- file-translation-service 
- website-translation-service

## SMTP Server Configuration
Keycloak sends emails to users to verify their email addresses, when they forget their passwords, or when an administrator needs to receive notifications about a server event. To enable Keycloak to send emails, you provide Keycloak with your SMTP server settings.

Follow: [Configuring email for a realm](https://www.keycloak.org/docs/latest/server_admin/#_email)

## Create users
Go to: `https://<NLTP_AUTH_DOMAIN>/auth/admin/master/console/#/Main/users`
Press "Add User" and enter new user details.
- Username and email must be the same e-mail address.
- Select the “main” user group from the Groups  dropdown. 
- Set “User Enabled” and “Email Verified” to “ON” and click “Save”.

To set password go to Credentials tab and press "Set password"

Go to user roles and assign new role "MT Group user", otherwise user will not have access to CAT Tool and Website translation.
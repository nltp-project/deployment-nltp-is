---
description: JWT Authentication Token is necessary in order to generate new API key.
---

# Obtaining Authentication Token

You can either use an existing user account or create a new one. Take note that this account must be created inside the **Main** realm so the default admin user will not work!

### Create a service account KC user

Navigate to `https://nltp-auth.example.com/auth/` and authorize.

1\) Create a KC user in the **Main realm**:

* email: `serviceuser@nltp.test`
* email verified: `On`

2\) Remove from Required user actions: Terms and Conditions, Update Password. Save.

3\) Go to Credentials > Set Password

* Choose password
* Temporary: off

### Retrieve access token

When the user account has been created you can retrieve the JWT access token by issuing the following curl command: (Make sure to replace email and password accordingly)

```bash
curl --location --request POST 'http://nltp-auth.example.com/auth/realms/Main/protocol/openid-connect/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'username=serviceuser@nltp.test' \
--data-urlencode 'password=serviceuserpassword' \
--data-urlencode 'client_id=mt-translator' \
--data-urlencode 'grant_type=password'
```

Example response:

{% code overflow="wrap" %}
```json
{"access_token":"EXTRACT_JWT_TOKEN_FROM_HERE","expires_in":36000,"refresh_expires_in":1800,"refresh_token":"...","token_type":"Bearer","not-before-policy":0,"session_state":"...","scope":"Groups email profile"}
```
{% endcode %}

Extract value from `access_token`, use this token when [Creating API Key](create-api-key.md).

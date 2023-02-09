# Creating API Key

API keys are stored inside KeyCloak as user entities. Platform users can generate their own API keys for custom integrations. Some components (e.g. `website` may require an API key in configuration).

#### Creating a new API Key

In order to create an API key, a JWT Access Token is required. See [Obtaining Authentication Token](auth-token.md) page for how to obtain it.

**Request**

```bash
curl --location --request POST 'https://nltp.example.com/api/apiKey' \
--header 'Content-Type: application/json' \
--header 'Accept: text/plain' \
--header 'Authorization: Bearer <YOUR_JWT_ACCESS_TOKEN>' \
--data-raw '{
  "name": "my api key",
  "restrictions": {
    "domains": [
        
    ]
  }
}'
```

Note: You can also specify domain restrictions that will be allowed to use this API key.

**Response**

```bash
{
    "id": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
    "name": "my api key",
    "restrictions": {
        "domains": []
    }
}
```

Value inside `id` field is API Key.

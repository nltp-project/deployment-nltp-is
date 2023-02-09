# Domains and Certificates

NLTP requires multiple domains for exposed services. Two main naming conventions are suggested:

| **Using NLTP as subdomain** | **Using NLTP as main domain (Alternative option)** | **Info**                                              |
| --------------------------- | -------------------------------------------------- | ----------------------------------------------------- |
| nltp.example.com            | nltp.mt / www.nltp.mt                              | Base domain for Frontend and backend                  |
| nltp-auth.example.com       | auth.ntlp.mt                                       | Keycloak (Authentication) service                     |
| nltp-cms.example.com        | cms.nltp.mt                                        | Frontend CMS API and admin interface                  |
| nltp-cdn.example.com        | cdn.nltp.mt                                        | If using local CDN (See [CDN.md](CDN.md))          |
| nltp-nectm.example.com      | nectm.nltp.mt                                      | Needed only during setup to import translation memory |

Note: Provided `*.example.com` domain names above are used in sample configuration files and in the MySQL database files ([cms.sql](sql/cms.sql)). You can use find/replace to change `example.com` domains with your actual domain name.

#### TLS/SSL Certificates

For securing domains you can either use multiple individual certificates for each domain or a single wildcard certificate or set up a [cert-manager](https://cert-manager.io/docs/) to generate certificates automatically (for example [Let's Encrypt](https://letsencrypt.org/) issued certificates).

**Ingress example**

Example of using TLS/SSL certificate [(TLS secret)](https://kubernetes.io/docs/concepts/configuration/secret/#tls-secrets) in Kubernetes ingress YAML:

```
  tls:
  - hosts:
    - nltp.example.com  # Domain name to secure with TLS/SSL certificate
    secretName: example-cert  # TLS secret used to secure this domain name
```

Note: Certificate management is out of the scope of this documentation.

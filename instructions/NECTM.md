# Translation Memory (NECTM)

## Importing Translation Memory

In order to import initial data in the translation memory service, it's necessary to enable NECTM Ingress (See `config/ingress.yaml`, uncomment all lines from `NecTM Admin site` section).

After enabling ingress, navigate to `nltp-nectm.example.com/admin/` and log in with credentials configured in secret `cat-tm-service-secret` (`ActivaTm__AdminUser` and `ActivaTm__AdminPwd`).

Go to `Translation Memory > Import` and upload provided TMX file, make sure to check "Main "under Tags.

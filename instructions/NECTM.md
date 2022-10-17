## NECTM
In order to import initial data in translation memory service, it's necessary to enable NECTM Ingress (See `config/ingress.yaml`).

After enabling ingress, navigate to `nltp-nectm.example.com/admin/` and login with credentials configured in secret `cat-tm-service-secret` (`ActivaTm__AdminUser` and `ActivaTm__AdminPwd`).

Go to `Translation Memory > Import` and upload provided TMX file, under Tags checking Main.
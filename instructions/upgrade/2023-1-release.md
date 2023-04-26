# 2023-1-release.md

Only follow these instructions if you already have set up a working platform before this release. If you are setting up from scratch just follow the main setup guide.

## Configuration files

Configuration files have been updated. Make sure to merge your existing configurations with new ones.

## Keycloak

Changes have been made in the Keycloak realm configuration:

* New Roles added
* Client "access-management-service" added

Make sure to either manually add them or remove the existing Keycloak database to automatically import from the updated Keycloak container.

## CMS

### Configuration

Configuration files have been modified. Make sure to generate new keys in `secrets.yaml,` frontend-cms-secret:

```yaml
  APP_KEYS: "ecYRdEL+yrJzEgZT6z/vOw==,Q7RycI2VqDlgr+Raw1pXgw==,pDMp1AzgWDE7n4zok3K97A==,jEhjbvTVWNcvVCD8pT/iGw==" # TODO
  API_TOKEN_SALT: "RvNRGeYZIE4yM8UdVso3wA==" # TODO
  ADMIN_JWT_SECRET: "QHM0ax3XAuKYeQJVIVnM9A==" # TODO
  JWT_SECRET: "SBVi5nVGukNnYA8GkfcANw==" # TODO
```

Use random values with the same length and format.

### Database upgrade

CMS Engine (Strapi) has been upgraded from v3 to v4, which means if you have imported CMS DB before this release, it's not compatible with the new version. There are two possible upgrade paths:

* A - Redeploy CMS by deleting existing CMS DB data and structure, and importing patched SQL file.
* B - Use CMS DB Migration script. This path is advised only if you have already made manual changes to CMS content. Otherwise, it's recommended to just start from scratch, as the migration procedure is more complicated.

#### Option A - Redeploying CMS DB

Run these commands:

```bash
kubectl exec deploy/mysql -i -- mysql -e "drop database nltp_cms;" # change DB name accordingly
kubectl exec deploy/mysql -i -- mysql -e "create database nltp_cms CHARACTER SET utf8 COLLATE utf8_unicode_ci;" # change DB name accordingly
kubectl exec deploy/mysql -i -- mysql < sql/cms.sql # import patched cms DB (replace example.com contents beforehand)
```

After new DB is imported deploy or restart new CMS component.

#### Option B - Migrating DB

Follow the [Migration script instructions](https://github.com/strapi/migration-scripts/tree/main/v3-sql-v4-sql).

### Reupload new CMS files

Existing CMS storage files should be removed and new ones uploaded from `cms_files.zip`. See [CMS setup instructions](../CMS.md) regarding uploading files.

## API Key setup

Website and Website translation components now require an API key that must be created and configured in order to work correctly.

Follow [Configure component API Keys](../api-keys.md) page to create and configure API keys.

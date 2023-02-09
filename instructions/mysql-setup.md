# MySQL Setup

**Important Note:** Provided MySQL server deployment is only an example and is not suited for production use (it doesn't support high availability or zero downtime).&#x20;

It's highly recommended to use an external managed MySQL database instead of deploying it on the cluster using provided MySQL manifest.

## MySQL Server requirements

Only MySQL v8 is supported!

Currently frontend-cms component requires a `require_secure_transport=off` to be configured on MySQL server. Also `sql-mode=NO_ENGINE_SUBSTITUTION` is required for cat-tool component.

Example `my.cnf` file:

```yaml
[mysqld]
collation-server = utf8mb4_general_ci
init-connect='SET NAMES utf8mb4'
character-set-server = utf8mb4
sql-mode = NO_ENGINE_SUBSTITUTION
require_secure_transport = OFF
```

## Set up MySQL users, databases and import data

#### Creating MySQL Users and databases

You can either import `sql/databases.sql` file using a privileged user account to create users and databases or do it manually referring to the contents of the file.

Make sure to change passwords for each DB (`nltp_*******_pass` placeholders).

#### Preparing SQL files

Before importing SQL databases, you need to manually edit them using a text editor by replacing `example.com` placeholders with your actual domain name in the following files:

* `sql/cms.sql`

#### Using Custom Database Names

It's highly recommended to use default database names, but If using non-default database names, make sure to also edit `sql/cat-tool_db.sql`, `cat-tool_conversations_log_db.sql`, `cms.sql` files and update configmaps and secrets accordingly.

#### Importing SQL data

When using an external managed MySQL database use MySQL CLI or GUI software like "MySQL Workbench" to import MySQL data.

When MySQL is deployed on the cluster for testing purposes, SQL Files can be imported using `kubectl`:

```
kubectl exec deploy/mysql -i -- mysql -e "show databases;" # verify connection
kubectl exec deploy/mysql -i -- mysql < sql/databases.sql # create users and databases
kubectl exec deploy/mysql -i -- mysql < sql/cat-tool_db.sql # import cat-tool DB
kubectl exec deploy/mysql -i -- mysql < sql/cat-tool_conversations_log_db.sql # import cat-tool DB
kubectl exec deploy/mysql -i -- mysql < sql/cms.sql # import cms DB
```

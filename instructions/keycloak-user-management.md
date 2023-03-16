# Keycloak user management

1. Go to Keycloak admin panel
2. Select **"Main"** realm

Create separate groups for individual users. Use roles to control the available functionality.

## Create groups

1. Open **"Groups"** view.
2. Click **"Create group"**
3. Enter group name.
4. Click **"Create"**.

## Add roles to group

1. Open **"Groups"** view.
2. Select a group from the list.
3. Click **"Role mapping"** tab.
4. Click **"Assign roles"**.
5. Select roles from the table.
6. Click **"Assign"**.

Roles:
1. **"MT Group User"** - default role, has to be assigned to every user.
2. **"MT Translator"** - complementary role, has to be assigned to use Trados plugin and generate access keys.
3. **"MT Website Translator"** - complementary role, has to be assigned to use Website translator.
4. **"MT Api Integrator"** - complementary role, has to be assigned to generate access keys for API integrators.

Other roles - system roles or extra roles for Terminology portal integrations. 


## Create users

1. Open **"Users"** view.
2. Click **"Add user"**.
3. Fill the user details.
4. Click **"Join Groups"**.
5. Select a previously created user group from the Groups list.
6. Set **"Email verified"** to **"ON"**.
7. Click **"Save"**.

Required user actions will be applied user: **"Terms and conditions"**, **"Update password"**. 

## Set temporary password

1. Open user details view.
2. Click **"Credentials"** tab.
3. Click **"Set password"**.
4. Enter the password.
5. Set **"Temporary"** to **"ON"**.

Send the credentials to the user.

## Delete users

1. Open **"Users"** view.
2. Find the user in the table.
3. Click the 3 dot icon at the end of the row.
4. Click **"Delete"**.

## Impersonate users
Impersonate users to check if the correct functionality is available to the user and debug problems.

1. Open **"Users"** view.
2. Find the user in the table.
3. Open the user.
4. In the **"Action"** menu, select **"Impersonate"**.
5. In the dialog, click **"Impersonate"**.
6. A new tab with the user's profile will be opened.
7. Go to NLTP website.
8. You will be logged in as the selected user.
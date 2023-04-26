# NLTP Identity customization

This document provides description for customizing different UI elements, such as logo, colors, texts and some simple SEO adjustments. It gives possibility to adjust site identity to each client needs. Text, logo and style files that are meant for customization from file system are stored under `assets/external-overrides` folder and you can modify these files accordingly.

All paths are shown how they are accessible in docker container image. Application is stored in `/usr/share/nginx/html` and all other paths are **relative to this path**.

>NOTE: Make sure to make all your UI customization changes persistent by rebuilding container image with your custom UI changes or with the **recommended option** - storing changes on a persistent volume, mounted on specific Frontend Pod mountPath - `/usr/share/nginx/html/assets/external-overrides`. Read more [here](#configure-ui-customization-persistence) about the recommended option setup.
---

## Search engine optimization

Since angular application is Single Page Application, search engines sees only the entrance point page to the application and at the moment it is not implemented to configure SEO tags for each pages seperately.

Application entrance point is `index.html` and by default there is title and description tags which you can change as you need. Modify `<meta>` and `<title>` tags to change page title and description.

Example of file:
```html
<!DOCTYPE html>
<html>
<head>
  <base href="/">
  <meta charset="utf-8" />
  <title>NLTP: Machine Translation Platform</title>
  <meta name="description" content="NLTP brings together the latest language technologies to give European public entities easy-to-use tools to simplify communication in many languages." />
  <meta name="og:title" content="NLTP: Machine Translation Platform" />
  <meta name="og:description" content="TNLTP brings together the latest language technologies to give European public entities easy-to-use tools to simplify communication in many languages." />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="//fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Outlined">
  <script src="https://unpkg.com/vue@2.6.14"></script>
  <link rel="stylesheet" href="assets/overrides/external-overrides.css">
</head>
<body>
<app-root>
    <div class="overlay">
        <div class="splash_screen">
            <img src="assets/images/logo.svg">
            NLTP is loading...
        </div>
    </div>
</app-root>
</body>
</html>
```

## Styles and colors

You can add custom styles and colors through `assets/external-overrides/style-overrides.css`.

In this file you can write any css selectors you want to modify and apply your desired styles. There is no more specific description about specific selectors, since you can find them all through developer tools.

To configure some of the used colors in project, it is possible to override predefined color template with your custom colors through css variables.

*predefined colors*
```css
    --base-100: #FFFFFF;
    --base-95: #F1F2F3;
    --base-70: #DEE0E3;
    --base-40: #656E76;
    --base-30: #474D53;
    --base-10: #181A1B;
    --primary-accent: #005693;
    --primary-accent-darker: #811835;
    --secondary-accent: #0A70C2;
    --success-dark: #177D61;
    --success-light: #E1F9F3;
    --warning-dark: #B25300;
    --warning-light: #FFF1E5;
    --error-dark: #C42121;
    --error-light: #FDF2F2;
    --gradient: #667680;
    --accent: #005693;
```

*base-100* - product surface color, card background, Sidebar navigation, background color of container main content areas

*base-95* - product background color, card background

*base-70* - border color, divider color

*base-40* - icon color, heading color for sidebar navigation

*base-30* - body text color

*base-10* - heading color

*primary-accent* / *accent* - primary button background, secondary button outline 
and text color

*secondary-accent* - link color, background color for headlines in documents (when needed) 

*success-dark* - default icon and text color for success status. Used to convey success states, used as background color for call out boxes

*success-light* - default background color for success messages

*warning-dark* - default warning status color, used to display information that needs user’s attention and may require further steps

*warning-light* - weak warning status color

*error-dark* - dfault danger status color

*error-light* - weak danger status color

*gradient* - used as background for  product landing pages

To override any of the colors, you need to add `:root` selector in stylesheet and define css variables in such manner: `--{color-name}: {color}!important;` where you replace `{color-name}` and `{color}` with custom values.

*Example of `assets/external-overrides/style-overrides.css` with overrided accent and base-10 color. It is important to use `!important` since there is already pre defined color pallete and you are overriding it.*

```css
:root{
    --accent: red!important;
    --base-10: #474D53!important;
}
```

## Localization

All texts are stored in json files and customizing them is only possible from those files. To edit any text that you see in UI, you need to open `assets/i18n/{desired-locale}.json` where `{desired-locale}` is your locale code. For example, for english, the file would be `assets/i18n/en.json`. When the file is opened, find the text in json file and edit appropriate key. Be aware that in some texts, there is variables used and the text may differ from what you see in UI - variables are encapsulated in double curly brackets (`{{variable}}`).

**Make sure you don't delete any keys because missing keys will display localization key code in UI or some predefined text in some of the used libraries.**

It is also possible to customize provided locales. To do so, you need to go to settings file `assets/external-overrides/external-overrides.settings.json` and configure locales array with setting `i18n.availableLanguages`. To configure locales, you need to add locale objects which has following properties:
- *code* - language code
- *name* - language display name. It should be in locales native language. These names ar not meant to be localized.

To allow only english and latvian languages, configure settings as:
```json
{
  "i18n": {
    "availableLanguages": [
      {
        "code": "lv",
        "name": "Latviešu"
      },
      {
        "code": "en",
        "name": "English"
      }
    ]
  }
 }
```

## Logos

Different NLTP logos are used based on their location and application state. Logos can be configured through `external-overrides.settings.json` file, which is also stored under `assets/external-overrides` folder. In following file, you can customize logos with following keys:
- `menu.ngxTldMenu.logo` - side menu logo, when side menu **is not** collapsed
- `menu.ngxTldMenu.logoCollapsed` - side menu logo, when side menu **is** collapsed 
- `menu.ngxTldMenu.burgerMenuLogo` - mobile menu logo
- `header.logo` - header logo (only visible in mobile view when menu is not opened)

*Note that different keys can point to same image file and there is no need to store seperate image for every configuration*

And there is also seperately configurable logo that gets displayed while app gets loaded. This can be done through `index.html` file by changing `<img>` tag `src` attribute.

Additionaly you can also change favicon. For doing that, you need to replace file `favicon.ico`. **This file name and extension can't be changed!**

## Default language directions for CAT tool

It is possible to also configure default language direction for  CAT tool. To do so, you need to edit `assets/external-overrides/external-overrides.settings.json`. Example configuration for setting cat tool default language direction from Croatian to English: 

```
"mt": {
    "cat": {
      "defaultFrom": "hr",
      "defaultTo": "en"
    }
  }
```

Correct codes can be found in [Matecat documentation](https://www.matecat.com/api/docs) under *supported languages* section. **Please make sure to put only first part of the code in configuration.**


---
## Configure UI customization persistence
To configure UI customization persistence without rebuilding frontend container image you can use this exaple configuration:

1) Adjust `storage.yaml`, add `PVC` config for frontend:
```yaml
---
# Frontend customizations
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: frontend-customization-data-pv-claim
  namespace: default
spec:
  accessModes:
    - ReadWriteMany
  resources:
    requests:
      storage: 2Gi
```
2) Adjust `frontend.yaml`, add `volumMounts` and `volumes` parts:

```yaml
        imagePullPolicy: "IfNotPresent"
        ports:
        - containerPort: 80
       ### ADD volumMounts ####
        volumeMounts:
        - mountPath: "/usr/share/nginx/html/assets/external-overrides"
          name: frontend-customization-data
       ######################## 
        resources:
          requests:
            cpu: "10m"
            memory: "35Mi"
          limits:
            cpu: "500m"
            memory: "256Mi"
      imagePullSecrets:
        - name: tildemt-acr
      restartPolicy: Always
      ## Add volumes #########
      volumes:
      - name: frontend-customization-data
        persistentVolumeClaim:
          claimName: frontend-customization-data-pv-claim
      ########################    
status: {}
```
3) Deploy these updated YAML files to Kubernetes

4) Copy your customizations to the new Frontend's PVC.
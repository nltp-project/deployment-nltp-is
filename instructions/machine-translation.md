# Machine Translation

## Using eTranslation Machine Translation systems

eTranslation is an online machine translation service provided by the European Commission (EC).

* Please note, the eTranslation web service is asynchronous. This means that the client sends a translation request and is notified later when the text snippet is translated. Make sure that `web-ingress` (main domain) is correctly exposed to the internet and can receive traffic from eTranslation servers. Otherwise, you will see an Unexpected error, and the Translation page will not load correctly.

To use eTranslation MT systems, please update 2 entries in `secrets.yaml` file:

```
  etranslation_username: "ETRANSLATION_APPLICATION_NAME"
  etranslation_password: "ETRANSLATION_PASSWORD"
```

Replace `ETRANSLATION_APPLICATION_NAME` and `ETRANSLATION_PASSWORD` with the eTranslation API access credentials.

If you don't have eTranslation API access credentials, please write to eTranslation Helpdesk: [DGT-ETRANSLATION-ADVISORY@ec.europa.eu](mailto:DGT-ETRANSLATION-ADVISORY@ec.europa.eu), stating your:

* Contact information:
  * Name;
  * Affiliation;
  * Email;
* Description:
  * Objectives of the project.


## Custom NLTP Machine Translation system setup Instructions

First, you need to acquire a link to the custom translation system archive file. Please reach out to `nltp-deployment@tilde.com` if you haven't received it already.

Follow the instructions about importing and activating custom translation systems:

* [MT system import](system-import/mt-system-import.md)
* [MT system removal](system-import/mt-system-removal.md)
* [MT system startup](system-import/mt-system-startup.md)

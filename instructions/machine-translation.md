# Machine Translation

## Using eTranslation Machine Translation systems

eTranslation is an online machine translation service provided by the European Commission (EC).

* Please note, the eTranslation web service is asynchronous. This means that the client sends a translation request and is notified later when the text snippet is translated. Make sure that `web-ingress` (main domain) is correctly exposed to the internet and can receive traffic from eTranslation servers. Otherwise, you will see an Unexpected error, and the Translation page will not load correctly.

To use eTranslation MT systems, please update 2 entries in `secrets.yaml` file:

```
  etranslation_username: "ETRANSLATION_APPLICATION_NAME"
  etranslation_password: "ETRANSLATION_PASSWORD"
```

Replace `ETRANSLATION_APPLICATION_NAME` and `ETRANSLATION_PASSWORD` with your _NLTP_ eTranslation account credentials.

If you don't have an eTranslation account, please write to eTranslation Helpdesk: [help@cefat-tools-services.eu](mailto:help@cefat-tools-services.eu), stating your:

* Contact information:
  * Name;
  * Affiliation;
  * Email;
* Description:
  * Objectives of the project;
  * Expected number of requests per day;
  * The expected size of queries.

## Custom NLTP Machine Translation system setup Instructions

First, you need to acquire a link to the custom translation system archive file. Please reach out to `nltp-deployment@tilde.com` if you haven't received it already.

Follow the instructions about importing and activating custom translation systems:

* [MT system import](mt-system-import.md)
* [MT system removal](mt-system-removal.md)
* [MT system startup](mt-system-startup.md)

#/bin/bash


SA_EMAIL=672059361733-compute@developer.gserviceaccount.com

gcloud iam service-accounts keys create key.json --iam-account=$SA_EMAIL

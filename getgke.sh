#/bin/bash


SA_EMAIL=672059361733-compute@developer.gserviceaccount.com

gcloud iam service-accounts keys create key.json --iam-account=$SA_EMAIL



kubectl exec nginx-app-6b6977dd9b-d9m2c -- printenv
kubectl exec --namespace=forager-helm nginx-app-6b6977dd9b-d9m2c -- printenv
kubectl exec --namespace=forager-helm nginx-app-98f6b9f4d-4wm78 -- printenv

kubectl exec --namespace=forager-helm -it nginx-app-7bcbbc5f5f-8c5wf -- env
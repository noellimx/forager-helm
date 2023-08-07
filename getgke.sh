#/bin/bash


SA_EMAIL=672059361733-compute@developer.gserviceaccount.com

gcloud iam service-accounts keys create key.json --iam-account=$SA_EMAIL



kubectl exec nginx-app-6b6977dd9b-d9m2c -- printenv
kubectl exec --namespace=forager-helm nginx-app-6b6977dd9b-d9m2c -- printenv
kubectl exec --namespace=forager-helm nginx-app-98f6b9f4d-4wm78 -- printenv

kubectl exec --namespace=forager-helm -it nginx-app-7bcbbc5f5f-8c5wf -- env


argocd           argocd-applicationset-controller   ClusterIP      10.223.253.223   <none>           7000/TCP            12h
argocd           argocd-dex-server                  ClusterIP      10.223.250.52    <none>           5556/TCP,5557/TCP   12h
argocd           argocd-redis                       ClusterIP      10.223.249.108   <none>           6379/TCP            12h
argocd           argocd-repo-server                 ClusterIP      10.223.247.238   <none>           8081/TCP            12h
argocd           argocd-server                      ClusterIP      10.223.251.186   <none>           80/TCP,443/TCP      12h
default          kubernetes                         ClusterIP      10.223.240.1     <none>           443/TCP             4d1h
forager-helm     gear-load-balancer                 LoadBalancer   10.223.243.103   34.106.233.143   82:31559/TCP        6h6m
forager-helm     nginx-load-balancer                LoadBalancer   10.223.254.7     34.106.65.86     81:32145/TCP        6h6m
gmp-system       alertmanager                       ClusterIP      None             <none>           9093/TCP            4d1h
gmp-system       gmp-operator                       ClusterIP      10.223.244.114   <none>           8443/TCP,443/TCP    4d1h
kube-system      default-http-backend               NodePort       10.223.242.8     <none>           80:32661/TCP        4d1h
kube-system      kube-dns                           ClusterIP      10.223.240.10    <none>           53/UDP,53/TCP       4d1h
kube-system      metrics-server                     ClusterIP      10.223.247.218   <none>           443/TCP             4d1h
sealed-secrets   sealed-secrets                     ClusterIP      10.223.253.138   <none>           8080/TCP            12h

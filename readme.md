


# draft

`kubeseal --fetch-cert --controller-namespace sealed-secrets --controller-name sealed-secrets`

`kubeseal < sealed-secret-template.yaml > my-sealed-secret.yaml --controller-namespace sealed-secrets --controller-name=sealed-secrets --format yaml --scope cluster-wide`

`kubectl exec --namespace=forager-helm mysql-set-0 -- env | grep MYSQL`


SPRING_DATASOURCE_URL
SPRING_DATASOURCE_USERNAME
SPRING_DATASOURCE_PASSWORD
SPRING_JPA_PROPERTIES_HIBERNATE_DIALECT
SPRING_DATASOURCE_HIKARI_CONNECTIONTIMEOUT
SPRING_DATASOURCE_HIKARI_INITIALIZATIONFAILTIMEOUT

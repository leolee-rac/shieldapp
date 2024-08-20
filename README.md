# guestbook-app
https://codefresh.io/blog/how-to-structure-your-argo-cd-repositories-using-application-sets/
https://github.com/kostis-codefresh/many-appsets-demo/tree/main

helm install all-apps all-apps/ --debug -n default
helm uninstall all-apps --debug -n default

kubectl delete applicationset dev-appset

kubectl delete applicationset  prd-appset
helm uninstall all-apps --debug -n default;kubectl delete applicationset dev-appset;kubectl delete applicationset  prd-appset;kubectl delete replicaset $(kubectl get replicaset -o jsonpath='{ .items[?(@.spec.replicas==0)].metadata.name }')

kubectl port-forward svc/shieldapp-service -n prd 8082:80
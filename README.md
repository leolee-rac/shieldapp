# guestbook-app
https://codefresh.io/blog/how-to-structure-your-argo-cd-repositories-using-application-sets/
https://github.com/kostis-codefresh/many-appsets-demo/tree/main

helm install shields chart/ --debug -n shield
helm uninstall shields --debug -n shield

kubectl delete applicationset dev-appset

kubectl delete applicationset  prd-appset
helm uninstall shields --debug -n argocd;kubectl delete applicationset dev-appset -n argocd;kubectl delete applicationset prd-appset -n argocd;kubectl delete replicaset $(kubectl get replicaset -o jsonpath='{ .items[?(@.spec.replicas==0)].metadata.name }')

kubectl port-forward svc/shieldapi-service -n prd 8082:8081

# example
docker run -d -p 8081:80 --name example-voting-app-vote docker/example-voting-app-vote

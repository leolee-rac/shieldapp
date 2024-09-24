# guestbook-app
https://codefresh.io/blog/how-to-structure-your-argo-cd-repositories-using-application-sets/
https://github.com/kostis-codefresh/many-appsets-demo/tree/main

helm install shields chart/ --debug -n argocd
helm uninstall shields --debug -n argocd

kubectl delete applicationset dev-appset

kubectl delete applicationset  prd-appset
helm uninstall shields --debug -n argocd;kubectl delete applicationset dev-appset -n argocd;kubectl delete applicationset prd-appset -n argocd;kubectl delete replicaset $(kubectl get replicaset -o jsonpath='{ .items[?(@.spec.replicas==0)].metadata.name }')

kubectl port-forward svc/shieldapp-service -n dev 9990:9990 9001:9001

run powershell
minikube docker-env | Invoke-Expression

E:\dev\shield-test-rhel\Dockerfile
docker build -t shield-test-rhel .

E:\dev\shield-v19\shieldapp
helm install shields chart/ --debug -n argocd

# example
docker run -d -p 8081:80 --name example-voting-app-vote docker/example-voting-app-vote

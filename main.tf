# https://github.com/argoproj/argo-helm/blob/main/charts/argo-cd/README.md

resource "helm_release" "shields" {
  name       = "shields"
  repository = "https://github.com/leolee-rac/shieldapp.git"
  chart      = "chart"
}

#helm status argocd --namespace argocd
#helm install argocd argo/argo-cd --namespace argocd --create-namespace -f ha-install.yaml
#helm install  argocd charts/argo-cd/ -f ha-install.yaml --dry-run --debug -n default --version 7.0.0
#helm upgrade argocd charts/argo-cd/ -f ha-install.yaml -n default --version 7.0.0 --force
#helm uninstall argocd --namespace argocd
#helm install -f values-dev.yaml root-app ./charts/root-app
#helm list -n argocd
#helm list -A
#helm uninstall applicationset -n argocd

#helm repo remove argo
#helm repo add argo https://argoproj.github.io/argo-helm
#helm repo update
#helm search repo argo/argo-cd --versions

#kubectl delete clusterrole argocd-application-controller
#kubectl delete clusterrole argocd-server
#terraform plan -out main.tfplan
#terraform apply main.tfplan

#terraform state list
#terraform state rm helm_release.applicationset

#kubectl annotate serviceaccount argocd-application-controller -n argocd meta.helm.sh/release-name=argocd --overwrite
#kubectl annotate serviceaccount argocd-application-controller -n argocd meta.helm.sh/release-namespace=default --overwrite

#kubectl annotate serviceaccount argocd-server -n argocd meta.helm.sh/release-name=argocd --overwrite
#kubectl annotate serviceaccount argocd-server -n argocd meta.helm.sh/release-namespace=argocd --overwrite

#kubectl annotate secret argocd-secret -n argocd meta.helm.sh/release-name=argocd --overwrite
#kubectl annotate secret argocd-secret -n argocd meta.helm.sh/release-namespace=argocd --overwrite

#kubectl annotate crd applications.argoproj.io meta.helm.sh/release-namespace=default --overwrite
#kubectl annotate crd applicationsets.argoproj.io meta.helm.sh/release-namespace=default --overwrite
#kubectl annotate crd appprojects.argoproj.io meta.helm.sh/release-namespace=default --overwrite

# kubectl annotate crd applications.argoproj.io meta.helm.sh/release-name=argo-cd --overwrite
# kubectl annotate crd applicationsets.argoproj.io meta.helm.sh/release-name=argo-cd --overwrite
# kubectl annotate crd appprojects.argoproj.io meta.helm.sh/release-name=argo-cd --overwrite

# or
# kubectl delete crd applications.argoproj.io
# kubectl delete crd applicationSet.argoproj.io
# kubectl delete crd AppProject.argoproj.io


#kubectl get namespaces
#kubectl -n argocd rollout restart deployment argocd-server


#kubectl edit application guestbook --namespace default
#kubectl apply -n argocd -f applicationset.yaml
#kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/applicationset/v0.4.0/manifests/install.yaml

# upgrade https://www.arthurkoziel.com/setting-up-argocd-with-helm/
# helm dep update charts/argo-cd/
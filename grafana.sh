kubectl create ns grafana
helm install grafana grafana/grafana \
 --namespace grafana \
 --set persistence.storageClassName="gp2" \
 --set persistence.enabled=true \
 --set adminPassword='Root123456' \
 --set service.type=LoadBalancer
kubectl get all -n grafana

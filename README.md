# Linode infra

- Testing Linode infra. Basic stuff (nothing interesting to see here).

```bash
export LINODE_TOKEN="<>"

terraform init
terraform plan
terraform apply

terraform output -raw kubeconfig | base64 -d > kubeconfig.yaml ## add to gi (not committed)
export KUBECONFIG=$(pwd)/kubeconfig.yaml
kubectl get nodes


## test deployment
kubectl apply -f k8s/ns.yml
kubectl apply -f k8s/

# get LB IP
EXTERNAL_IP=$(kubectl get svc nginx-service -n demo-app -o jsonpath='{.status.loadBalancer.ingress[0].ip}')

echo "Web UI: http://$EXTERNAL_IP"
echo "Health: http://$EXTERNAL_IP/health"
echo "Status: http://$EXTERNAL_IP/status"
```
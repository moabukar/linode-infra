# Linode infra


```bash
export LINODE_TOKEN="your-linode-api-token"


terraform init
terraform plan
terraform apply

terraform output -raw kubeconfig | base64 -d > kubeconfig.yaml ## add to gi (not committed)
export KUBECONFIG=$(pwd)/kubeconfig.yaml
kubectl get nodes
```
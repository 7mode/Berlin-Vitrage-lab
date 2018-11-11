kubectl port-forward `kubectl get pods -o jsonpath="{.items[*].metadata.name}"` 9345:9345 > /dev/null 2>&1 

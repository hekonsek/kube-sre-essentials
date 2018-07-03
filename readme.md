# Kube SRE Essentials

Kube SRE is a composite Helm chart provide infrastructure essential SRE components.

## Recommended chart configuration

In order to start using Kube SRE Essentials use the following values file:

    nginx-ingress:
      controller:
        hostNetwork: true
        service:
          externalIPs:
          - YOUR_IP
        nodeSelector:
              kubernetes.io/hostname: machine0001

Helm chart itself can be created using the following command:

    helm repository add kse https://hekonsek.github.io/kube-sre-essentials/repository
    helm upgrade --install --namespace=kube-system kse kube-sre-essentials --values=values.yml
# Kube SRE essentials

Kube SRE is a composite Helm chart provide infrastructure essential SRE components.

## Recommended chart configuration

    nginx-ingress:
      controller:
        hostNetwork: true
        service:
          externalIPs:
          - YOUR_IP
        nodeSelector:
              kubernetes.io/hostname: machine0001
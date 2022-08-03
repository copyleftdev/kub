echo '
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: proxy-from-k8s-to-httpbin
  annotations:
    konghq.com/strip-path: "true"
spec:
  ingressClassName: kong
  rules:
  - http:
      paths:
      - path: /foo
        pathType: ImplementationSpecific
        backend:
          service:
            name: proxy-to-httpbin
            port:
              number: 80
' | kubectl create -f -
echo "
kind: Service
apiVersion: v1
metadata:
  name: proxy-to-httpbin
spec:
  ports:
  - protocol: TCP
    port: 80
  type: ExternalName
  externalName: httpbin.org
" | kubectl create -f -

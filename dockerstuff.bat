docker build -t gcr.io/jbekkers-1/jasperbekkers_nl:4 .
docker push gcr.io/jbekkers-1/jasperbekkers_nl:4
kubectl apply -f service.yml
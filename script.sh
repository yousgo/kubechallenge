#namspace db execution

kubectl create -f data534test/hostpath-pv.yml &&
kubectl create -f data534test/db-namspace.yml &&
kubectl create -f data534test/db-env-vars-cm.yml &&
kubectl create -f data534test/db-svc.yml &&
kubectl create -f data534test/db-statefulset.yml &&
kubectl create -f data534test/create-pgdb-job.yml &&


#namspace app execution

kubectl create -f data534test/private-reg-secret.yml &&
kubectl create -f data534test/app-namspace.yml &&
kubectl create -f data534test/app-env-vars-cm.yml &&
kubectl create -f data534test/app-deploy.yml &&
kubectl create -f data534test/app-svc.yml &&
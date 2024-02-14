#command memo

#namespace db execution

kubectl create -f files/hostpath-pv.yml &&
kubectl create -f files/db-namespace.yml &&
kubectl create -f files/db-svc.yml &&
kubectl create -f files/db-pg-password-secret.yml &&
kubectl create -f files/db-statefulset.yml &&
kubectl create -f files/create-pgdb-job.yml

#deletions
kubectl delete pv disk-pv db &&
kubectl delete namespace db &&
kubectl delete svc db-service -n db &&
kubectl delete statefulset postgres-statefulset -n db
kubectl delete secret pg-password -n db &&
kubectl delete job create-pgdb-job -n db


#namspace app execution

kubectl create -f files/app-namespace.yml &&
kubectl create -f files/private-reg-secret.yml &&
kubectl create -f files/app-env-vars-cm.yml &&
kubectl create -f files/app-deploy.yml &&
kubectl create -f files/app-svc.yml


#deletions
kubectl delete namespace app &&
kubectl delete svc app-service -n app &&
kubectl delete secret pivate-reg-secret -n app &&
kubectl delete deploy app-test -n app
kubectl delete cm db-vars-for-app -n app


service=(
  #api service file
  api
  cms-api
  #rpc service file
  user
  friend
  group
  auth
  admin-cms
  message-cms
  statistics
  office
  organization
  conversation
  cache
  msg-gateway
  transfer
  msg
  push
  sdk-server
  demo
)

for i in ${service[*]}
do
    kubectl -n openim delete deployment "${i}-deployment"
done

kubectl -n openim delete service api
kubectl -n openim delete service cms-api
kubectl -n openim delete service sdk-server
kubectl -n openim delete service msg-gateway
kubectl -n openim delete service demo

echo done
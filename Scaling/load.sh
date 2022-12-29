kubectl delete pods load-generator

kubectl run -i --tty load-generator --rm --image=busybox -- /bin/sh -c "while sleep 0.01; 
do wget -q -O- http://server; 
done"
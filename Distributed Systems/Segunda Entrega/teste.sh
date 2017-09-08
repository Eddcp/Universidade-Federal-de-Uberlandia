#!/bin/bash
HOST=localhost
PORT=1345

curl --request POST \
       	  --url http://$HOST:$PORT/arq1 \
       	        --data 'açsldkfajsçdlfkajsd\nasldfkjasçdlfjkasdfkajsçdfkja\nlasdjfaçsldkfajçsdfk\nlaskdjfçasdkfjaçsdlkfajsçdlf\nalsdfjkaçsdfkajsdf\nasdf'


for((x=0; x < 5000; x++));
do
   r=$RANDOM
   r=$(( r %= 200 ))
   curl --request PUT \
       	  --url http://$HOST:$PORT/arq1 \
       	        --data "asfasdfasdf$r" &
done

curl --request GET \
       	  --url http://$HOST:$PORT/arq1
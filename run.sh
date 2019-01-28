# -u NLU model
# -d Core model
docker run $MODE --name rpa-brain \
   --mount type=bind,source=`pwd`,target=/tmp \
   --mount type=bind,source=`pwd`/_out/app/dialogue,target=/app/dialogue \
   --mount type=bind,source=`pwd`/_out/app/model,target=/app/model \
   -p 5005:5005 \
   rasa.local run python -m rasa_core.run --credentials /tmp/credentials.yml --enable_api -d /app/dialogue -u /app/model/current/nlu --debug

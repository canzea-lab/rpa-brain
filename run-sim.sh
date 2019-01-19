export PROJECT_PATH=`pwd`/projects/pizza_store

docker run \
   --mount type=bind,source=`pwd`/_out/app/dialogue,target=/app/dialogue \
   --mount type=bind,source=$PROJECT_PATH/models/current/nlu,target=/app/nlu \
   rasa/rasa_nlu:latest-full run python -m rasa_core.run -d /app/dialogue

mkdir -p _out/app/dialogue
export PROJECT_PATH=`pwd`/projects/pizza_store

docker run -ti \
   -p 5005:5005 \
   --mount type=bind,source=$PROJECT_PATH,target=/app/project \
   --mount type=bind,source=`pwd`/_out/app/model,target=/app/model \
   --mount type=bind,source=`pwd`/_out/app/dialogue,target=/app/dialogue \
   rasa.local run python  -m rasa_core.train  -d project/domain.yml -s project/stories.md -o /app/dialogue

# If "interactive" --nlu /app/model/current/nlu

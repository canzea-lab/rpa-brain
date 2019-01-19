mkdir -p _out/app/model

export PROJECT_PATH=`pwd`/projects/pizza_store

docker run \
   -v `pwd`:/tmp \
   -v $PROJECT_PATH:/project \
   --mount type=bind,source=`pwd`/_out/app/model,target=/app/model \
   rasa.local run python -m rasa_nlu.train -c /tmp/nlu_config.yml --data /project/nlu.md -o /app/model --fixed_model_name nlu --project current --verbose

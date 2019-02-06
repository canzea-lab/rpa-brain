

# Getting Started

docker build --tag rasa.local -f Dockerfile.rasa .



./train-pizza.sh
./train-pizza-nlu.sh
./run.sh
curl -XPOST http://20.20.20.20:5005/conversations/default/respond -d '{"query":"hello"}'

[{"recipient_id":"default","text":"Hello, what can I get you?"}]


1]

domain + stores --> dialogue


curl -v http://localhost:5005/conversations/22-22-22/tracker

curl -XPOST http://localhost:5005/webhooks/rest/webhook -H "Content-Type: application/json" -d '{"sender":"Joe", "message":"hello"}'

curl -XPOST http://localhost:5005/conversations/default/respond -d '{"query":"hello"}'

# Run test

  curl -XPOST http://localhost:5005/webhooks/rest/webhook -H "Content-Type: application/json" -d '{"sender":"Joe", "message":"hi"}'
  curl -XPOST http://localhost:5005/webhooks/rest/webhook -H "Content-Type: application/json" -d '{"sender":"Joe", "message":"I would like a pizza"}'
  curl -XPOST http://localhost:5005/webhooks/rest/webhook -H "Content-Type: application/json" -d '{"sender":"Joe", "message":"Yes"}'
  curl -XPOST http://localhost:5005/webhooks/rest/webhook -H "Content-Type: application/json" -d '{"sender":"Joe", "message":"ok goodbye"}'
  
# Upload a new model

./train-pizza.sh

(cd _out/app/dialogue && zip -r model.zip .)

curl -XPOST -F model=@_out/app/dialogue/model.zip http://localhost:5005/model

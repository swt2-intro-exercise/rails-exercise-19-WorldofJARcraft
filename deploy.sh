id=$(docker inspect rails --format={{.Id}})
curl -n -X PATCH https://api.heroku.com/apps/$APP/formation \
  -d '{
  "updates": [
    {
      "type": "web",
      "docker_image": "$id"
    }
  ]
}' \
  -H "Content-Type: application/json" \
  -H "Accept: application/vnd.heroku+json; version=3.docker-releases" \
  -H "Authorization: Bearer $APIKEY"
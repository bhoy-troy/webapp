#Webapp

Written in golang using buffalo


Docker

    docker login --username=_ --password=$(heroku auth:token) registry.heroku.com

##Deploy
### Using buffalo heroku CLI

    buffalo heroku deploy
    
###Using heroku CLI
    heroku container:push web 
    heroku container:release web 
# node-deploy expressjs

## Introduce
It is how to deploy node js project. The project already in project directory. 

## Requirement
Machine must be have docker and docker-compose (version > 2.1)

## How to deploy
### Clone repository
````
git clone https://github.com/isnoor/node-deploy.git
cd node-deploy
````
### Copy environment
docker environment in root dorectory
````
cp .env.example .env
````
Modify the value. 

node js envirenment already in project directory
````
cp project/.env.example project/.env
cp project/package-lock.json.example project/package-lock.json
````

### Run application
````
docker-compose up -d
````

### Access the project
In .env, any NODE_PORT, when then value 3000, so open your web browser and access localhost:3000


## How to show Log
To monitor we can show log with 
````
docker-compose logs -f --tail 100
````

## Update application
Node project exists in project directory. Modify index.js in project directory, save that. Then run
````
docker-compose restart
````

Access your application in web browser.

## How to add node depedencies
### Add in package.json
Open package.json and add the module. Then restart docker.
````
docker-compose restart
````
### Add in docker terminal
````
docker exec -it node-app npm install .....
````
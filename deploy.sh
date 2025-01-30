#!/bin/bash 

#PRODUCTION 
git reset --hard 
git checkout master 
git pull origin master 


npm i yarn -g 
yarn global add serve 
yarn 
yarn run build 
# cd C:\Users\Muhammadziyo\Desktop\cofeshop-react
# pm2 start yarn --name "CoffeeShoppy-React" -- run start:prod
# pm2 start yarn --name "CoffeeShoppy-React" -- run start:prod
pm2 start "yarn run start:prod" --name=CoffeeShoppy-React
# pm2 start serve --name="CoffeeShoppy-React" -- -s build -l 80
# pm2 start process.config.js


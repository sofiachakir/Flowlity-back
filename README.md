# Flowlity Technical Challenge

This Ruby on Rails app is the backend of a simple web application that allows inventory level visualization
It allows the front-end app to retrieve inventory levels data.

## Versions :

Ruby - 2.5.1

Rails - 5.2.4

DB - PostgreSQL

Framework - Ruby on Rails

## To start:
To use this app locally, download the repo or clone it.

### Installation:
```bash
bundle install
```
```bash
rails db:create
```
```bash
rails db:migrate
```
```bash
rails db:seed
```
```bash
rails server -p 3001 
```

## Information:

### Models:
This app has 2 models : Product and InventoryLevel.
A product has many inventory levels. An inventory level belongs to a product.

### Controllers:
This app has one controller for each model with only an index method to retrieve all records for these models. The output in json data.

### Routes:
The data is accessible via : 
[http://localhost/3001/api/v1/products](http://localhost/3001/api/v1/products)
Or
[http://localhost/3001/api/v1/products/1/inventory_levels](http://localhost/3001/api/v1/products/1/inventory_levels)
# README

App using rails 6, docker, graphql

* git clone git@github.com:HichamGS/findmedicalcare.git

* cd findmedicalcare

* docker-compose up

# Database setting
* docker-compose exec web bin/rails db:create
* docker-compose exec web bin/rails db:migrate db:seed

Then
Navigate to http://localhost:3000/graphiql

query example :

query {
  doctor(id:1) {
    name
    description
    location {
      lng
      lat
      address
    }
    specialties {
      title
      description
    }
  }
}
![Alt text](public/SC1.png?raw=true "Graphiql query")
![Alt text](public/SC2.png?raw=true "Graphiql Migration")

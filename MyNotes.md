## Just a recap
- blog(rails new <project_name> --api)
- models(posts and review)
- migrated(rails db:migrate)
- MVC(model view controller)
- create controller
- created routes
- testing api end-points

## Active Record Associations
- simply the connection between two or more active record models.

## Active Record Macros
- belongs_to
- has_many
- has_one
- has_one:through
- has_many:through
- has_and_belongs_to_many
- has_many:dependent

## example
- car sale shop(HQ - Nairobi)
- car sale branch(Nakuru)
- car sale branch(Eldoret)
- one-to-many relationships
- has_many = HQ
- belongs_to = branches

- post has many reviews
- review belongs to post

## Active Model Serializers
- install gem 'active_model_serializers'
- rails g serializer <serializer_name>

## Authentication in rails using sessions and cookies
- cookies - these are text files with small pieces of data.
- cookies - lets web apps remember your credentials like logins and history.
- Http cookies or internet cookies - 

## For you to use cookies in app
- add middleware in config/application.rb
- user model(email, username, location, password)
- do migration
- create controller
- create routes(endpoints)
- test endpoints
- bcrypt - gem 'bcrypt'
- has_secure_password
- password_digest




## NB
- serializers generated should match your model name.
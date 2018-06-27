# README

- Starter template created for rails app.
- Following gems are installed
`gem 'bootstrap', '~> 4.1.1'` - bootstrap v4 style sheet can be used. [bootstrap docs](https://getbootstrap.com/docs/4.1/components/)

`gem 'devise'` - used for authentication. [devise github](https://github.com/plataformatec/devise)

`gem 'simple_form'` - forms made easy using [simple form](https://github.com/plataformatec/simple_form)

- home page created as root path

## How to use:
Clone this project and run `bundle` to install the gems and `rake db:create foodora-collaborative-project_development` to create the database in postgres.
run `rake db:migrate` to generate schema file with users table, which is added via devise

## requirement spec (User story):
[trello](https://trello.com/b/TPGCDCMC/foodora-gentech-collaborative-project)

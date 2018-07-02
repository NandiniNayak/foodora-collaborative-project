# README
-test

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


## Project Rules :

- Each member of the team picks up a task from the task list
- Before starting work, discuss with the team and plan out how would you handle independent tasks and dependent tasks
- Design and draw an ERD as a team before starting work too.
- Each person in the team has three major tasks.
i) implements the functionality and push to side branch, send a review request to a team mate and a request for independent testing.
ii) Review and test a team members code.
iii) Once reviewed and tested will merge the changes to master.
- Admin of the master branch has to discuss with the corresponding side branch coder and merge to master by resolving conflicts if any. No one else is allowed to merge back into master.
- Pair programming must be done where necessary and involves dependency.
- Must follow scrum methodology.
- Must follow GitHub guide for the commit messages(https://gist.github.com/digitaljhelms/3761873).
- Must deploy a functional app to heroku.

## Git push rules:
- Admin forks this repo.
- Adds the team as collaborators
- Each team member must clone, branch and create a pull request to master (note team member must not merge to master)

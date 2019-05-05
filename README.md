# Task API

In this exercise you'll be completing two tasks: Importing a set of records into the database from a CSV file and then exposing those records through a RESTful API.

You are allowed to use any resources from the internet to complete this but you should do this task on your own without any outside help.

### What you need to do
1. git clone the repo and create a branch off from `master` locally
2. Make sure you are using ruby version 2.6.0
    - I recommend downloading rbenv or rmv to handle ruby versioning for you
    - https://github.com/rbenv/rbenv#installation or https://rvm.io/
    - `rbenv`(is our ruby manager of choice)
    - install bundler
        - `gem install bundler`
3. Run the setup scripts from below once you have the right version of ruby running
    - you can check your version of ruby with `ruby -v`
2. Debug `TaskImport#perform` which can be found at `app/models/task_import.rb`
    - This method should import tasks and their attributes from a csv file
    - You can see a sample CSV file under `lib/assets/tasks.csv`
    - To test your import run `bundle exec rspec spec/models/task_import_spec.rb`
    - Fix the failing test
    - Run `bundle exec rake tasks:import` to import all of the tasks
3. Expose tasks through the API
    - Endpoint should be `/api/tasks`
    - Serialize all the attributes of the task **except** it's `task_type`, by finishing the `TaskSerializer`
    - Include a task's tags as an array, serializing it's description using the TagSerializer and a has_many relationship
    - Serialize the requester and owner as just their names
    - we use https://github.com/Netflix/fast_jsonapi as our serializer so refer to that for documentation
    - *Bonus* write tests for your serializers

### Setup
To setup this project:

```
$ bin/setup
```

Optionally the following commands will do the same
```
$ bundle install
$ bundle exec rake db:create
$ bundle exec rake db:migrate
```

### Testing
To run the tests:

```
$ bundle exec rake
```

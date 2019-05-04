# Task API

In this exercise you'll be completing two tasks: Importing a set of records into the database from a CSV file and then exposing those records through a RESTful API.

You are allowed to use any resources from the internet to complete this but you should do this task on your own without any outside help.

### What you need to do
1. git clone the repo and create a branch off from `master` locally
2. Make sure you are using ruby version 2.6.0
  - I recommend downloading rbenv or rmv to handle ruby versioning for you
  - https://github.com/rbenv/rbenv or https://rvm.io/
2. Debug `TaskImport#perform`
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

### Testing
To run the tests:

```
$ rake
```

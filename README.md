# AdminEngine
## Usage

Install the database migration to create an admins table.

    bundle exec rake admin_engine:install:migrations

Run the database migration.

    bundle exec rake db:migrate
 
Use a before_filter for actions that require the logged in account to be admin.

    before_filter :authorize_admin

Visit http://localhost:3000/admin

If the logged in account is not an admin, you will see the following:

### Unknown action

AbstractController::ActionNotFound
<br>
<hr>  
Make the logged in account an admin by adding an entry in the admins table.

Now you will see the following:

### Admin

Customize this page by implementing views/admin/home.
<hr>
## Development
### Prepare the "dummy" app
    pushd spec/dummy
    rake user_authentication:install:migrations
    rake admin_engine:install:migrations
    rake db:drop
    rake db:create
    rake db:migrate
    rake db:test:prepare
    popd
    
### Run specs
    rspec
    
   

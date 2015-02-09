# AdminEngine

Install the database migration to create an admins table.

    bundle exec rake admin_engine:install:migrations

Run the database migration.

    bundle exec rake db:migrate
 
Use a before_filter for actions that require the logged in user to be admin.

    before_filter :authorize_admin

Visit http://localhost:3000/admin

If the logged in user is not an admin, you will see the following:

### Unknown action

AbstractController::ActionNotFound
<br>
<hr>  
Make the logged in user an admin by adding an entry in the admins table.

Now you will see the following:

### Admin

Customize this page by implementing views/admin/home.
<hr>

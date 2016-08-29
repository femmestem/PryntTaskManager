# Prynt Task Manager
## Project Description
Prynt Task Manager is an app that allows users to create and manage tasks. Tasks can be assigned to multiple users by the task creator. New users can create an account by providing an email address or by signing in with a Facebook account.

## Contributors
Christine Feaster (@femmestem), [christine@christine.codes](mailto:christine@christine.codes?Subject=ATTN%20Admin%20%22Prynt%20Task%20Manager%22)

## Developer Documentation
### System Requirements
 - <a href="http://git-scm.com/" target="_blank">Git</a>
 -  Ruby 2.3 (<a href="https://rvm.io/rvm/install" target="_blank">RVM</a> recommended for managing Ruby versions)
 -  Rails 4.2.7
 -  Postgres >= 9.3
 - <a href="https://github.com/sstephenson/execjs" target="_blank">ExecJS</a> supported JavaScript runtime (therubyracer gem is included)

To check your ruby version, run `$ ruby --version`. If your version is 2.3.0 or above, then you’re good to go.

If not, download <a href="https://rvm.io/rvm/install" target="_blank">RVM</a> if not already installed, then run `$ rvm list` to see your installed ruby versions. If you have 2.3.0 installed, run `$ rvm use ruby-2.3.0`. Otherwise, install or update your ruby version with RVM.

### Quickstart
1. Download or clone this repository from GitHub `$ git clone https://github.com/femmestem/PryntTaskManager.git PryntTaskManager`
2. Change directory into the project folder `$ cd PryntTaskManager`
3. Download dependencies `$ gem install bundler` then `$ bundle install`
4. Set up the Postgres database (see **Database** section below)
5. Run `$ rails server`
6. Point your browser to `http://localhost:3000` to preview the app

#### Database
1. Install PostgreSQL
2. Create the database `$ bundle exec rake db:create`
3. Load the schema `$ bundle exec rake db:schema:load`
4. (Optional) Seed the database with default admin user and starter data `$ bundle exec rake db:seed`
 - Note: The default behavior for db:seed has been modified to use different datasets based on environment. See notes in the `seeds.rb` file.

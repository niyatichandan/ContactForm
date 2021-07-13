# README

Contact Form

# Setting up the app

## Prerequisites

- Ruby 2.6.3
- Rails [6.1.3]
- Node.js
- Yarn
- MySQL

## Getting Started (One-time setup)

##### 1. Check out the repository
​
```bash
git clone https://github.com/niyatichandan/ContactForm
```
​
##### 2. Setup database config
​
Edit config/database.yml file and add your MySQL user username and password.
​
##### 3. Create and setup the database
​
Run the following commands to create and setup the database.
​
```ruby
rake db:create
```
​
```ruby
rake db:migrate
```
​
##### 4. Add GMAIL credentials
​
- To add the credentials, run the following command, which creates a config/application.rb file and modifies the .gitignore file to prevent the file from being checked into a git repository.

- Add the following key-value pairs in config/development.rb and config/development.rb or in config/environment.rb
​
    - `username`
    - `password`
    - `port`
    - `domain`
    - `address`

​
##### 5. Install the dependencies
​
```ruby
bundle install
```
​
##### 6. Start the Rails server
​
You can start the rails server using the command given below.
​
```ruby
rails s
```
​
And now you can visit the site with the URL http://localhost:3000


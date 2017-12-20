# README

# King County Humane Society API

  This API is provided to aid in the adoption of animals at the King County Human Society.

* Clone repository to local system.
* Navigate to the project root folder and run the following commands in the terminal.

  $ bundle install

  $ rails db:setup

  $ rails c

  irb(main):001:0>User.create!(email: 'example@mail.com' , password: 'your_password' , password_confirmation: 'your_password')

  Then post the email, password and password_confirmation params into localhost:3000/authenticate to receive your API secret token.

  Now you can pass your token to the o.auth2 field and localhost:3000/animals will list all current animals in the database.
  localhost:3000/aniamls/:id will return a single animal matching the given :id

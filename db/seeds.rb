# -*- encoding : utf-8 -*-

# set up roles
Role.create! :name => 'admin'
Role.create! :name => 'user'

# set up first admin user
u = User.create!(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')
u.roles << Role.where(:name => 'admin').first

# set up first regular user
u = User.create!(:email => 'user@example.com', :password => 'password', :password_confirmation => 'password')
u.roles << Role.where(:name => 'user').first

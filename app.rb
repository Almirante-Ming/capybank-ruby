require 'sinatra'
require 'sinatra/activerecord'
require_relative 'routes/init'
require_relative 'models/init'

set :database_file, 'config/database.yml'

class User < ActiveRecord::Base
end

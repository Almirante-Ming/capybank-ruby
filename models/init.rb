require 'data_mapper'

  DataMapper.setup(:default, {
    :adapter => 'postgres',
    :database => 'reparos',
    :host => 'localhost',
    :port => 5432,
    :password => 'masterkey',
    :user => 'postgres'
  })

require_relative 'tarefas'

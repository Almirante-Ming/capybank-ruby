require 'data_mapper'

DataMapper.setup(:default, {
  :adapter  => 'postgres',
  :database => 'postgres',
  :host     => 'localhost',
  :port     => 5432,
  :user     => 'postgres',
  :password => 'masterkey'
})

class Cliente
  include DataMapper::Resource

  property :id, Serial
  property :nome, String
  property :telefone, String
  property :saldo, Float

  has n, :tarefas
  has n, :equipamentos
end

class Tarefa
  include DataMapper::Resource

  property :os, Serial
  property :descricao, String
  property :data_recebe, Date
  property :valor, Float
  property :data_entrega, Date

  belongs_to :cliente
  has n, :historicos
end

class Equipamento
  include DataMapper::Resource

  property :id, Serial
  property :nome, String
  property :modelo, String
  property :numero_serie, String

  belongs_to :cliente
  has n, :historicos
end

class Historico
  include DataMapper::Resource

  property :id, Serial
  property :data_recebe, Date
  property :descricao, String

  belongs_to :tarefa
  belongs_to :equipamento
end

DataMapper.finalize
DataMapper.auto_upgrade!

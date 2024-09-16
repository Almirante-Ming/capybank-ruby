class Tarefa < ActiveRecord::Base
  belongs_to :cliente
  has_many :historicos
end

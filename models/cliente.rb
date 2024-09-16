class Cliente < ActiveRecord::Base
  has_many :tarefas
  has_many :equipamentos
end

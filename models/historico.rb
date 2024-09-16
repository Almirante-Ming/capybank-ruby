class Historico < ActiveRecord::Base
  belongs_to :tarefa
  belongs_to :equipamento
end

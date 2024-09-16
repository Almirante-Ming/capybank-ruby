class Equipamento < ActiveRecord::Base
  belongs_to :cliente
  has_many :historicos
end

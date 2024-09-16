class User < ActiveRecord::Base
  validates :nome, presence: true, uniqueness: true
  validates :celular, presence: true
  validates :saldo, presence: true
end

class Medico < ApplicationRecord
  has_many :consultas
  attr_accessor :especializacao
  attr_accessor :nome, :cpf, :email, :crm
end

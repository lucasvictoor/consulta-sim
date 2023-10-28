class Medico < ApplicationRecord
  has_many :consultas, foreign_key: 'medico_id'
  attr_accessor :especializacao
  attr_accessor :nome, :cpf, :email, :crm
end

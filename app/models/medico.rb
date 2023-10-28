class Medico < ApplicationRecord
  has_many :consultas, foreign_key: 'medico_id', dependent: :destroy
  attr_accessor :especializacao
  attr_accessor :nome, :cpf, :email, :crm

  #Validations
  validates :especialidade, presence: true, length: { maximum: 255 }
  validates :crm, presence: true, uniqueness: true, format: { with: /\A\d{7}\z/, message: 'Obrigatório 7 dígitos numéricos' }
  validates :cpf, presence: true, format: { with: /\A\d{11}\z/, message: 'Obrigatório 11 dígitos numéricos' }
end

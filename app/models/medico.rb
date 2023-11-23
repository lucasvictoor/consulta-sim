class Medico < ApplicationRecord
  has_many :consultas, dependent: :destroy
  has_many :pacientes, through: :consultas

  #Validations
  validates :especialidade, presence: true, length: { maximum: 255 }
  validates :crm, presence: true, uniqueness: true, format: { with: /\A\d{7}\z/, message: 'Obrigatório 7 dígitos numéricos' }
  validates :cpf, presence: true, format: { with: /\A\d{11}\z/, message: 'Obrigatório 11 dígitos numéricos' }
end

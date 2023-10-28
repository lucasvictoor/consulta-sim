class Paciente < ApplicationRecord
  has_one :endereco, dependent: :destroy
  has_many :consultas, dependent: :destroy

  #Validations
  validates :nome_completo, presence: true, length: { maximum: 255 }
  validates :cpf, presence: true, format: { with: /\A\d{11}\z/, message: 'Obrigátorio ter 11 dígitos numéricos' }
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end


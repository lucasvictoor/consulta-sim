class Consulta < ApplicationRecord
  belongs_to :paciente
  belongs_to :medico

  validates :data, presence: true
end

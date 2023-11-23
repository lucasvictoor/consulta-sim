class Consulta < ApplicationRecord
  belongs_to :paciente
  belongs_to :medico

  validates :data, presence: true
  validate :data_nao_pode_ser_no_passado

  private

  def data_nao_pode_ser_no_passado
    if data.present? && data < Date.today
      errors.add(:data, "não pode ser no passado")
    end
  end
end

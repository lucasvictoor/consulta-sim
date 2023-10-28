class AddEspecializacaoToMedicos < ActiveRecord::Migration[7.0]
  def change
    add_column :medicos, :especializacao, :string
  end
end

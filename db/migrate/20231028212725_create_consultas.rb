class CreateConsultas < ActiveRecord::Migration[7.0]
  def change
    create_table :consultas do |t|
      t.references :paciente, null: false, foreign_key: true
      t.references :medico, null: false, foreign_key: true
      t.datetime :data

      t.timestamps
    end
  end
end

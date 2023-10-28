class AddEmailToMedicos < ActiveRecord::Migration[7.0]
  def change
    add_column :medicos, :email, :string
  end
end

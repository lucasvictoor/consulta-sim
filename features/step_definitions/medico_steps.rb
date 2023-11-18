#História de usuário: Anexar documentos médicos.

Dado("Existe um médico cadastrado no sistema") do
  @medico_crm = 'CRM123'
  visit new_medico_path
  fill_in 'medico[nome]', with: 'Chloe Soares'
  fill_in 'medico[cpf]', with: '70650898001'
  fill_in 'medico[email]', with: 'chloe@soares.com'
  fill_in 'medico[especialidade]', with: 'Cardiologista'
  fill_in 'medico[crm]', with: @medico_crm
  click_button 'Create Medico'
end

Dado("Existe uma consulta associada a esse médico") do
  @consulta = Consulta.create!(medico_id: Medico.find_by(crm: @medico_crm).id, paciente_id: Paciente.first.id, data: DateTime.now)
end

Quando("O médico anexa um documento à consulta") do
  visit edit_consulta_path(@consulta)
  attach_file('consulta[documento]', Rails.root + 'path/do/seu/arquivo.pdf')
  click_button 'Update Consulta'
end

Então("O documento médico é salvo com sucesso") do
  expect(page).to have_content('Consulta was successfully updated.')
end

Então("O paciente pode visualizar o documento anexado") do
  visit paciente_path(Paciente.first)
  expect(page).to have_content('Documento Anexado')
end

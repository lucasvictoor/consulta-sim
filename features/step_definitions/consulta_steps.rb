#História de usuário: Reserva de consulta.

Given('o médico está na página de reserva de consultas') do
  visit '/reserva_consultas'
end

When('o médico bloqueia o horário {string}') do |horario|
  find("button[data-horario='#{horario}']").click
end

Then('eu vejo uma mensagem de sucesso informando que o horário foi bloqueado') do
  expect(page).to have_content('Horário bloqueado com sucesso!')
end

When('o médico visualiza a agenda') do
  click_link 'Visualizar Agenda'
end

Then('eu vejo a lista de horários bloqueados pelo médico') do
  expect(page).to have_selector('.horario-bloqueado', count: 1)
end

When('o médico desbloqueia o horário {string}') do |horario|
  find("button[data-horario='#{horario}']").click
end

Then('eu vejo uma mensagem de sucesso informando que o horário foi desbloqueado') do
  expect(page).to have_content('Horário desbloqueado com sucesso!')
end

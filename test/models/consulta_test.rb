require "test_helper"

class ConsultaTest < ActiveSupport::TestCase
  test "salvar consulta com data de consulta valida" do
    paciente = Paciente.new(nome: "Mario Andrade Correia", data_nascimento: Date.yesterday, email: "email@email.com", cpf: "63166787038")
    medico = Medico.new(nome: "Paulo Jose da Silva", crm: "1234567", especialidade: "Cardiologista", email: "email@email.com", cpf: "34559617031")

    assert paciente.save
    assert medico.save

    consulta = Consulta.new(data: 2.days.from_now, horario: "10:00", paciente_id: paciente.id, medico_id: medico.id)

    assert consulta.save
  end

  test "salvar consulta com data de consulta invalida" do
    paciente = Paciente.new(nome: "Mario Andrade Correia", data_nascimento: Date.yesterday, email: "email@email.com", cpf: "61126558028")
    medico = Medico.new(nome: "Paulo Jose da Silva", crm: "1234567", especialidade: "Cardiologista", email: "email@email.com", cpf: "12342596057")

    assert paciente.save
    assert medico.save

    consulta = Consulta.new(data: Date.yesterday, horario: "10:00", paciente_id: paciente.id, medico_id: medico.id)

    assert_not consulta.save
  end

  test "salvar consulta com horario valido" do
    paciente = Paciente.new(nome: "Mario Andrade Correia", data_nascimento: Date.yesterday, email: "email@email.com", cpf: "91290095027")
    medico = Medico.new(nome: "Paulo Jose da Silva", crm: "1234567", especialidade: "Cardiologista", email: "email@email.com", cpf: "17159117093")

    assert paciente.save
    assert medico.save

    consulta = Consulta.new(data: 5.days.from_now, horario: "10:00", paciente_id: paciente.id, medico_id: medico.id)

    assert consulta.save
  end

  test "salvar consulta com horario invalido" do
    paciente = Paciente.new(nome: "Mario Andrade Correia", data_nascimento: Date.yesterday, email: "email@email.com", cpf: "35946256050")
    medico = Medico.new(nome: "Paulo Jose da Silva", crm: "1234567", especialidade: "Cardiologista", email: "email@email.com", cpf: "17815305059")

    assert paciente.save
    assert medico.save

    consulta = Consulta.new(data: 2.days.from_now, horario: "1ergregheh", paciente_id: paciente.id, medico_id: medico.id)

    assert_not consulta.save
  end
end

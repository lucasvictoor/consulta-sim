require "test_helper"

class PacienteTest < ActiveSupport::TestCase
  test "salvar paciente com cpf invalido" do
    paciente = Paciente.new(nome: "Mario Andrade Correia", cpf: "12345678913", email: "email@email.com", data_nascimento: Date.yesterday)
    assert_not paciente.save
  end

  test "salvar paciente com cpf valido" do
    paciente = Paciente.new(nome: "Mariana Flores da Silva", cpf: "25870939020", email: "email@email.com", data_nascimento: Date.yesterday)
    assert paciente.save
  end

  test "salvar paciente com data de nascimento valida" do
    paciente = Paciente.new(nome: "Luan Victor dos Santos Gomes", data_nascimento: Date.yesterday, email: "email1@email.com", cpf: "25870939020")
    assert paciente.save
  end

  test "salvar paciente com data de nascimento invalida" do
    paciente = Paciente.new(nome: "Leonardo Victor dos Santos Gomes", data_nascimento: 2.days.from_now, email: "email1@email.com", cpf: "25870939020")
    assert_not paciente.save
  end
end

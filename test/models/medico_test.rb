require "test_helper"

class MedicoTest < ActiveSupport::TestCase
  test "salvar medico com email invalido" do
    medico = Medico.new(nome: "Mario Andrade Correia", crm: "1234518", especialidade: "Cardiologista", email: "emailmail.com", cpf: "60023152002")
    assert_not medico.save
  end

  test "salvar medico com email valido" do
    medico = Medico.new(nome: "Mariana Flores da Silva", crm: "1234567", especialidade: "Cardiologista", email: "email@mail.com", cpf: "61023152002")
    assert medico.save
  end

  test "salvar medico com nome" do
    medico = Medico.new(nome: "Luan Victor dos Santos Gomes", crm: "1234547", especialidade: "Cardiologista", email: "email2@mail.com", cpf: "25870939020")
    assert medico.save
  end

  test "salvar medico sem nome" do
    medico = Medico.new(nome: "", crm: "1234567", especialidade: "Cardiologista", email: "email@mail.com", cpf: "61023152002")
    assert_not medico.save
  end
end
Feature: Anexar Documentos Médicos
  As a administrador do sistema Consulta-Sim
  I want to que médicos possam anexar seus documentos referentes a uma consulta
  So that seja possível compartilhar informações relevantes com os pacientes e fornecer uma documentação completa

  Scenario: Médico anexa documento a uma consulta
    Given o administrador do sistema está logado
    And existe um médico cadastrado no sistema
    When o médico seleciona uma consulta existente
    And anexa um documento à consulta
    Then eu vejo uma mensagem de sucesso indicando que o documento foi anexado

  Scenario: Médico visualiza documentos anexados a uma consulta
    Given o administrador do sistema está logado
    And existe um médico cadastrado no sistema
    And o médico tem documentos anexados a uma consulta específica
    When o médico visualiza os detalhes dessa consulta
    Then eu vejo a lista de documentos anexados à consulta

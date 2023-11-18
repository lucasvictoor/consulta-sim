Feature: Reserva de Consulta
  As a administrador do sistema Consulta-Sim
  I want to que médicos possam bloquear ou reservar horários específicos
  So that eles possam gerenciar melhor seus horários e evitar conflitos

  Scenario: Médico reserva um horário específico
    Given o administrador do sistema está logado
    And existe um médico cadastrado no sistema
    When o médico acessa o calendário de horários disponíveis
    And seleciona um horário específico para reserva
    Then eu vejo uma confirmação de que o horário foi reservado com sucesso

  Scenario: Médico bloqueia um horário específico
    Given o administrador do sistema está logado
    And existe um médico cadastrado no sistema
    When o médico acessa o calendário de horários disponíveis
    And bloqueia um horário específico
    Then eu vejo uma confirmação de que o horário foi bloqueado com sucesso

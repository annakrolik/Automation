Feature: BankAccount

  Scenario: withdraw money available in user account
    Given BankAccount has 1000 PLN
    When user withdraws 500 PLN
    Then transaction should be done
    And account balance should be 500 PLN

  Scenario: payment is not possible
    Given BankAccount has 1000 PLN
    When user withdraw 1500 PLN
    Then transaction should not be proceeded
    And account balance should be 1000 PLN

  Scenario: withdraw and transfer money available for user
    Given BankAccount has 1000 PLN
    When user withdraw 1000 PLN
    And user transfer 2000 PLN
    And user withdraw 500 PLN
    Then transaction should be done
    And account balance should be 1500 PLN

  Scenario: money pay in & withdraw are not available for user account
    Given BankAccount balance is 2000 PLN
    When user withdraw 1500 PLN
    And user withdraw 1500 PLN
    Then transaction should not be proceeded
    And account balance should be 500 PLN





Feature: New user requests for an account in the service
  In order for a user to get an account in the service
  A a new user visitor
  I Should be able to apply for an account via the service
 
  Scenario: New user navigates to account application form
    Given I am on the home page
    When I click on "pyydä tunnuksia"
    Then I should go to "new user" page
    
  Scenario: New user applies for account via application form
    Given I am on the new user page
    When I fill in "email address"
      And fill in "first name"
      And fill in "surname"
      And select "a hospital"
      And select "a chemists"
      And I submit the application form
    Then I should see "kiitos"
    

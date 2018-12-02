Feature: Visitor can review his order 

    As a visitor,
    In order to see my full order and a total price
    I would like be able to see a list on an order details page

    Background: 
        Given the following user exists
            | email          | password  | password_confirmation |
            | Don@trump.com  | maga2020  | maga2020              |
        And I visit login page

    Scenario: User reviews order
        Given I have logged in
        And I click 'Add to Cart'
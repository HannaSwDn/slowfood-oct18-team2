Feature: Visitor can review his order
    As a visitor, 
    In order to see my full order and a total price
    I would like be able to see a list on an order details page

    Background: 
        Given the following user exists
            | email          | password  | password_confirmation |
            | Don@trump.com  | maga2020  | maga2020              |

        And the following products exists
            | name        | description                      | price | category |
            | green salad | fresh lettuce, tomato and cheese | 50    | starter  |

    @javascript
    Scenario: Visitor can view his order on a checkout page
        When I visit the site
        And I click 'Login' 
        Then I fill in 'Email' with 'Don@trump.com'
        And I fill in 'Password' with 'maga2020'
        And I click 'Log in'
        And I click "Add to Cart"
        And I click "Check out"
        And I should see "Order Total: €150"
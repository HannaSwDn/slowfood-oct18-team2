@javascript

Feature: Visitor can review his order
    As a visitor, 
    In order to see my full order and a total price
    I would like be able to see a list on an order details page

    Scenario: Visitor can view his order on a checkout page
        Given the following products exists
        | name            | description                            | price | category |
        | green salad     | fresh lettuce, tomato and cheese       | 50    | Starter  |
        | pizza           | cheese, pinapple and ham               | 100   | Main     |

        When I visit the site
        And I click "Add to cart" on "green salad"
        And I click "Add to cart" on "pizza"
        And I click "Checkout"
        And I should see "Order Total: €150"
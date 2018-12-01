Feature: Restaurant owner can update information about his restaurant

As a restaurant owner,
In order to keep my customers up to date
I would like to be able to make updates regarding information and contact details of my restaurant
    
    Background: owner exists
    And the following user exists
            | email              | password  | password_confirmation | owner |
            | odin@norsegod.com  | oneeye111 | oneeye111             | true  |

Scenario: owner updates infomation
    Given owner has logged in
    Then I click 'update restaurant information'
    And I should see 'Update information'
    Then I fill in 'Phone number' with '123456789'
    Then I fill in 'Email' with 'owner@foodify.com'
    Then I fill in 'Adresss' with '1234 street street'
    Then I fill in 'Hours of operation' with 'monday-sunday, 8-21'
    And I click 'Submit'

    

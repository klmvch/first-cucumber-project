@wip
Feature: Status codes page

Background:
    Given I am on the "status_codes" page

Scenario Outline: User can check status code page <statusCode>
    When I click on the Status code <statusCode>
    Then I see the status code text with <statusCode>
    Examples:
        | statusCode | 
        | 200        |
        | 500        |


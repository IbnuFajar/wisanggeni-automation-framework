Feature: Searching wisanggeni-automation-framework in github
    In this case i want to clone wisanggeni-automation-framework

    Scenario: As a User i want find wisanggeni-automation-framework
        Given I Open github
        And I Type wisanggeni-automation-framework
        Then I Want to clone wisanggeni-automation-framework

    Scenario: As a User i want download wisanggeni-automation-framework with failed condition
        Given I Open github
        And I Type wisanggeni-automation-framework
        Then I Want to download wisanggeni-automation-framework

@managing_promotions
Feature: Adding a new promotion
    In order to give possibility to pay less for some goods
    As an Administrator
    I want to add a new promotion to the registry

    Background:
        Given I am logged in as an administrator

    @ui
    Scenario: Adding a new promotion
        Given I want to create a new promotion
        When I specify its code as "FULL_METAL_PROMOTION"
        And I name it "Full metal promotion"
        And I add it
        Then I should be notified that it has been successfully created
        And the promotion "Full metal promotion" should appear in the registry

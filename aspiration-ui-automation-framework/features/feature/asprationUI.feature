@TC_Aspiration_UI
Feature: acceptance test

  @homepage
  Scenario: Aspiration Home Page
    Given The web page aspiration.com to the user
    When The User goes to Spend & Save link at the top of the home page
    Then Verify that the user finds two card products, Aspiration and Aspiration Plus

  @productAspiration
  Scenario: Aspiration Prodcuts Page
    Given The aspiration.com products page to the user
    When The User clicks on Aspiration product
    Then Verify that when you click Get Aspiration - A modal containing an input field for an email address to sign up appears

@productAspirationPlus
  Scenario: Aspiration Plus Prodcuts Page
    Given The Aspiration Plus Prodcuts Page to the user
    When The User clicks on Aspiration Plus product
    Then Verify that when you click Get Aspiration Plus - A modal containing an input field for an email address to sign up appears


Feature: To demonstrate the UI Automation using karate

  Background: configure driver
    Given driver 'https://demo.nopcommerce.com/'

    Scenario: verify the title of the page
      Then match driver.title == 'nopcommerce demo store'

      Scenario: verify the user navigate to login page
        When click("//a[contains(text(),'Log in')]")
        * def actualText = text("//h1[contains(text(),'Welcome, Please Sign In!')]")
        Then match actualText =="Welcome, Please Sign In!"
        And input('#passwor',"prime123")
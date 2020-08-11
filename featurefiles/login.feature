
Feature: Login page
  
  Scenario Outline: Successful login with different category
    Given User is on Login Home page
	  And User enters UserName and Password
	  And Select the type of "<StartIn>" category 
	  And User performs all the validation SN
		And Click on Login Now button
		Then Validate the login page

    Examples: 
      | StartIn    | 
      | Equity     |
      | Currency   |
      | F&O        |
      |Mutual Funds|
      |Portfolio   |         |

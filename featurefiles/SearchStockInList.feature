
Feature: Search stock in stock list
 
  Scenario: Successful login with valid credentials
		Given User is on Login Home page
	  And User enters UserName and Password
	  And Select the type of start In category
	  And User performs all the validation SN
		And Click on Login Now button
		Then Validate the login page

  
  Scenario Outline: Search stock in stock list
    Given User is on virtual stock home page
    And 	Click Holding & Services from left panel
    Then  Click Stock List option and wait for page load
    Then  Enter "<StockName>" in search text box
    And   Select "<EquityStockListProduct>" and "<ExchangeType>" from drop down
    When  Click the View button and wait for search result
    
    
    
    
    
    
    
    
    
    
    
    
    

    Examples: 
      | StockName  |   EquityStockListProduct 	    | ExchangeType  |
      | ACC        |     BTST   					| BSE       	|
      | SBI        |     Margin/Felxi Cash   		| NSE          	|
      |	KEC		   |     SPOT                       | BSE           |
      | AXIBAN     |     MarginPlus   				| NSE       	|
      | UNIBR      |     OFS                		| NSE          	|
      |	YESBAN	   | Systematic EquityPlan(SEP)     | BSE           |
      | MOTSUM     |   Equity Shares As Margin      | BSE  			|    		
      | HERHON     |     All                		| NSE          	|
      
      

 
 
 Feature: This is a part of stock market where user can place sell order for equity for the following transactions
 
    Scenario: Successful login with valid credentials
		Given User is on Login Home page
	  And   User enters UserName and Password
	  And   Click on Login Now button
		Then  Validate the login page
	  
	
    Scenario Outline: Sell the stock in certain quantity at market or Limit price from different exchange
    Given User is logged in and on Virtual Stocks Home page 
    When  User clicks on Place Order link from left equity widget panel by default Cash Buy form gets open
    Then   User click on Cash Sell tab button 
    Then  Select "<EquityPlaceOrderProduct>"
    And   Select "<ExchangeType>"
    And   Enter "<StockName>" Name
    And   Enter "<SellQuantity>" and select "<OrderValidity>" 
    And   If "<OrderType>" Limit enter "<LimitPrice>" Otherwise left blank
    When  Click on Sell Now button
    Then  Click on Proceed button
 
   
     
   
   Examples:
   |EquityPlaceOrderProduct  | ExchangeType | StockName | SellQuantity | OrderValidity | OrderType  | LimitPrice |
   | Cash    				         | NSE    		  | SBI       | 50           | Day           |  Market    |            | 
   | Cash                    | BSE          | KEC       | 100          | Day           |  Market    |            |
   | Cash                    | NSE          | INFOSYS   | 20           | Day           |  Market    |            |
   | Cash                    | BSE          | INFOSYS   | 100          | Day           |  Market    |            |
   | Cash                    | NSE          | JP        | 150          | Day           |  Limit     |            |
   | Cash                    | BSE          | ACC       | 250          | Day           |  Limit     |            |
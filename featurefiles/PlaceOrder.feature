

Feature: Place Order

		Scenario: Successful login with valid credentials
		Given User is on Login Home page
	  And User enters UserName and Password
	  And Select the type of start In category
	  And User performs all the validation SN
		And Click on Login Now button
		Then Validate the login page
		
	  
	  Scenario: Click Place Order from left widget panel
    Given User is logged in and on Home page
    When  User clicks on Place Order from left equity widegt panel
    Then  Verify that Equity Place Order page is displayed
    
	
		
		Scenario Outline: Fill the Form and Place Order in Cash Buy Segment
    Given User is on Equity place order page
    And Select "<EquityPlaceOrderProduct>"
    And Select "<ExchangeType>"
    And Enter "<StockName>" Name
    And Enter "<Quantity>"
    And select "OrderValidity" and "<OrderType>"
    And Enter "<LimitPrice>"
    Then  Click on Buy Now button
   
   
   Examples:
   |EquityPlaceOrderProduct  | ExchangeType | StockName | Quantity | OrderValidity | OrderType | LimitPrice |
   | Cash    				 | NSE          | SBI       | 50       | Day           |  Limit    | 190        | 
   | Cash                    | BSE          | KEC       | 100      | IOC           |  Limit    | 260        |
   | Cash                    | NSE          | JP        | 150      | Day           |  Limit    | 3.75       |
 
    
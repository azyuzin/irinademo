@login
	Feature: As a user I want to be able to login
	Background:
		Given I am on login page
	Scenario Outline: 
		And I enter username as "<username>"
		And I enter password as "<password>"
		When I click signin
		Then I should <expectResult>
		Examples:
		| username 		| password			| expectResult |
		| irina   		| password			| beLoggedIn   |
		| wrongName   | wrongPassword | seeAnError   |

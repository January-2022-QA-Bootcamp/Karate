@ui
Feature: UI Validation

@firefox
Scenario: Mozilla Browser - Progressive
Given configure driver = {type:'geckodriver', executable:"#('C:/Users/mdnas/eclipse-workspace/karateJan22/drivers/geckodriver.exe')"}
When driver 'https://www.progressive.com/'
# * click("//a/span[text()='Popular']")
* click('{span}Auto')
* input('#zipCode_overlay', '11418')

@chrome
Scenario: Chrome Browser - Progressive
# * configure driver = { type: 'chrome', executable: "#('C:/Users/mdnas/eclipse-workspace/karateJan22/drivers/chromedriver.exe')"}
* configure driver = { type: 'chrome', executable: 'chrome' }
When driver 'https://www.progressive.com/'
# * click("//a/span[text()='Popular']")
* click('{span}Auto')
* input('#zipCode_overlay', '11418')

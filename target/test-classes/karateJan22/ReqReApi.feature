Feature: ReqRes API validation

@GetUsers
Scenario: Page 3 Data should be null
Given url 'https://reqres.in'
And path '/api/users'
And param page = 3
When request {}
And method Get
Then status 200
And match response.page == 3
And match response.data.size() == 0
And match header Connection == 'keep-alive'

Scenario: Page 1 should have data length 6
* url 'https://reqres.in'
* path '/api/users'
And param page = 1
When request {}
And method Get
* status 200
And match response.page == 1
And match response.data.size() == 6
And match header Connection == 'keep-alive'

Scenario: Post User
Given url 'https://reqres.in'
And path '/api/users'
And request {"name" : "David", "job":"Manager"}
When method Post
Then status 201


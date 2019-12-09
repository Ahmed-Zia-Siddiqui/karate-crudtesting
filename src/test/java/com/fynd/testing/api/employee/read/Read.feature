Feature: Read operation for Employee(s)

  Background:
  * url 'http://dummy.restapiexample.com/api/v1/employee'

    Scenario: Verify that GET operation to retrieve employee data successfully
      Given path '/132443'
      When method get
      Then status 200
      And print 'Response:', response
      And match response contains {"id":"#present","employee_name":"#string","employee_salary":"#present","employee_age":"#present","profile_image":"#ignore"}

Feature: Delete operation for Employee(s)

  Background:
  * url 'http://dummy.restapiexample.com/api/v1/delete'

    Scenario: Verify that the employee data is deleted successfully
      Given path '/132847'
      When method delete
      Then status 200
      And print 'Response:', response

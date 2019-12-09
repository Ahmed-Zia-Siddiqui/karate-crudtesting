Feature: Update operation for Employee(s)

  Background:
  * url 'http://dummy.restapiexample.com/api/v1/update'

    Scenario: Verify that the employee details are Updated successfully
      * json payloadJson = read('classpath:payload/employee-put-request.json')
      Given path '/132409'
      And request payloadJson
      When method put
      Then status 200
      And print 'Response:', response
      And match response.name == payloadJson.name

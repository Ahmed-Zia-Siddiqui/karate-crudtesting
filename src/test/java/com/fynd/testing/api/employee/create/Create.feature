Feature: Create operation for Employee(s)

  Background:
  * url 'http://dummy.restapiexample.com/api/v1'

    Scenario: Verify that employee data is Created successfully
      * json payloadJson = read('classpath:payload/employee-post-request.json')
      Given path '/create'
      And request payloadJson
      When method post
      Then status 200
      And print 'Response:', response
      And match response contains {"name":"#string","salary":"#present","age":"#present","id":"#present",}

      * def uniqueId = response

      Given path '/delete/', uniqueId.id
      When method delete
      Then status 200
      And print 'Response:', response



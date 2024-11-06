Feature:

Background: 
    * def hash = '000000000000000000076c036ff5119e5a5a74df77abf64203473364509f7732'

 Given url baseURL

Scenario: 
    Given path 'api','block-height','680000'
    When method GET
    Then status 200
 * def Myresponse = response
 Given path 'api','block',Myresponse
 When method GET 
Then status 200
And assert response.tx_count == 2875

@senario2
Scenario:
    Given path 'api','block',hash,'txs','index
    When method GET 
    Then status 200
    And match response.txid == '96d92f03000f625a38bf8cb91c01188a02b7972238cc6c4e0c6f334cf755004d' || response.txid == '6dd68336c085d5b7b694e2bf6f6c11bca589aea07b6f1c0232bd627c3d217074'







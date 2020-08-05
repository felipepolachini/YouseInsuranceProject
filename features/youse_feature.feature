# language: en

Feature: Youse insurance quotation

  @insurance @auto @own @noChassi @noAdapation @sameDriver
  Scenario Outline: Access Youse website and proceed a auto insurance quotation with own car and no chassi number a same driver
    Given Access youse website 
    # And Access page "<insuranceType1>"
    # And Check Insurance page "<insuranceType1>"
    # And Access page "<insuranceType2>"
    # And Check Insurance page "<insuranceType2>" 
    # And Access page "<insuranceType3>"
    # And Check Insurance page "<insuranceType3>"

    When Start login
    And Insert user info
    And Insurance quotation "<insuranceType>"

    And Set personal data 

    And Set Has Vehicle 
    And Set No Chassi
    And Set Vehicle info 
    And Set Usage "<usage>"
    And Set Ownership "<ownership>"
    And Set Adaptations "<hasAdaptations>"
    And Is Armored "<isArmored>"
    And Set Residence info "<stayHome>"
    And Set Insured info "<youngDriver>"
    
    And Choose Insurance
    # And Choose Assitance
    # And Set Car Data

    #Then Check Paymean Screen

    Examples: 
      | insuranceType  |usage     |ownership            |hasAdaptations|isArmored|stayHome|youngDriver|
      | Auto           |Particular|nome de pessoa física|não possui    |não é    |dorme   |true|

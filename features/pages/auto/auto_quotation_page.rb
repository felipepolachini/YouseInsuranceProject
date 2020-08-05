require_relative '../youse_common_section.rb'

class AutoQuotationPage < SitePrism::Page

    element :nameField, '#auto_order_flow_lead_person_data_lead_person_attributes_name'

    element :emailField, '#auto_order_flow_lead_person_data_lead_person_attributes_email'

    element :phoneField, '#auto_order_flow_lead_person_data_lead_person_attributes_phone'

    element :continueButton, '.button.button--primary'

    #section :common, YouseCommonSection, '.narrative-form__field.narrative-form__field--hidden.form-navigation-wrapper'

    def setName
        nameField.set CONFIG['name'] 
    end    

    def setEmail
        emailField.set CONFIG['email']
    end  

    def setPhone
        phoneField.set CONFIG['phone']
    end  

    def setInfo
        continueButton.click
    end  

end
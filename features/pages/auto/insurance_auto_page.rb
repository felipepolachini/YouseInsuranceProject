require_relative '../youse_common_section.rb'

class InsuranceAutoPage < SitePrism::Page 

    element :hasVehicle,:xpath, "//label[@class='radio-button__fake-radio' and @for='has_vehicle_true']"

    element :chassiField, '#auto_order_flow_pricing_requirements_vehicle_attributes_license_plate_or_vin'

    element :hasChassi,:xpath, "//a[@id='open-fallback']"
    
    element :cep, '#auto_order_flow_pricing_requirements_insured_person_attributes_address_attributes_zipcode'

    element :number, '#auto_order_flow_pricing_requirements_insured_person_attributes_address_attributes_number'

    element :cpf, '#auto_order_flow_pricing_requirements_insured_person_attributes_cpf'

    element :continueButton, '.button.button--primary'

    #section :common, YouseCommonSection, '.narrative-form__field.narrative-form__field--hidden.form-navigation-wrapper'  

    def setHasVehicle
        hasVehicle.click
    end
    
    def setChassi
        chassiField.set CONFIG['chassi']
    end    

    def noChassi
        hasChassi.click
    end  
    
    def setVehicleInfo
         first("option[value='#{CONFIG['brandName']}']").select_option
         select CONFIG['modelName'], from: 'manual_auto_order_flow_pricing_requirements_vehicle_attributes_model'
         select CONFIG['yearModel'], from: 'manual_auto_order_flow_pricing_requirements_vehicle_attributes_year'
         select CONFIG['versionModel'], from: 'manual_auto_order_flow_pricing_requirements_vehicle_attributes_version'   
    end
    
    def setUsage(usage)
        select usage, from: 'auto_order_flow_pricing_requirements_vehicle_attributes_usage'
    end 
    
    def setOwnership(ownership)
        select ownership, from: 'auto_order_flow_pricing_requirements_vehicle_attributes_ownership_status'
    end    

    def setAdaptations(hasAdaptations)
        select hasAdaptations, from: 'adapted'
    end    

    def setArmor(isArmored)
        select isArmored, from: 'auto_order_flow_pricing_requirements_vehicle_attributes_bullet_proof'
    end
    
    def setResidenceInfo(stayHome)
        cep.set CONFIG['CEP']
        number.set CONFIG['number']

        select stayHome, from: 'auto_order_flow_pricing_requirements_same_zipcode_insured_vehicle'    
    end    

    def setInsuredInfo(youngDriver)      
        cpf.set CONFIG['CPF']

        select CONFIG['nationality'], from: 'auto_order_flow_pricing_requirements_insured_person_attributes_nationality'
        select CONFIG['marital'], from: 'auto_order_flow_pricing_requirements_insured_person_attributes_marital_status'
        select CONFIG['insured'], from: 'auto_order_flow_pricing_requirements_driver_attributes_has_insurance'
        select CONFIG['driver'], from: 'auto_order_flow_pricing_requirements_driver_attributes_same_as_insured_person'
                                        
        find(:xpath,"//label[@class='radio-button__fake-radio' and @for='young_driver_#{youngDriver}']").click

        continueButton.click

    end    

end   
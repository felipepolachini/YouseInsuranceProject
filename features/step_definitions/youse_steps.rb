Given("Access youse website") do
    home.load
    raise "Não foi possível acessar o site" unless expect(page).to have_current_path(CONFIG['URL'], url: true)
end
  
  Given("Access page {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Given("Check Insurance page {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When("Start login") do
    home.userLogin
  end

  When("Insert user info") do
    user.setEmail
    user.setPassword
  end
  
  When("Insurance quotation {string}") do |insurance|
    account.startQuotation(insurance)
  end
  
  When("Set personal data") do 
    auto_quotation.setName
    auto_quotation.setEmail
    auto_quotation.setPhone
    auto_quotation.setInfo
  end

  When("Set Has Vehicle") do
    auto_insured.setHasVehicle  
  end
  
  When("Set No Chassi") do
    auto_insured.noChassi 
  end
  
  When("Set Vehicle info") do
    auto_insured.setVehicleInfo
  end

  When("Set Usage {string}") do |usage|
    auto_insured.setUsage(usage)
  end
  
  When("Set Ownership {string}") do |ownership|
    auto_insured.setOwnership(ownership)
  end
  
  When("Set Adaptations {string}") do |hasAdaptations|
    auto_insured.setAdaptations(hasAdaptations)
  end
  
  When("Is Armored {string}") do |isArmored|
    auto_insured.setArmor(isArmored)
  end
  
  When("Set Residence info {string}") do |stayHome|
    auto_insured.setResidenceInfo(stayHome)
  end
  
  When("Set Insured info {string}") do |younDriver|
    auto_insured.setInsuredInfo(younDriver)
  end
  
  When("Choose Insurance") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When("Choose Coverage") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When("Choose Assitance") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When("Set Car Data") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then("Check Paymean Screen") do
    pending # Write code here that turns the phrase above into concrete actions
  end
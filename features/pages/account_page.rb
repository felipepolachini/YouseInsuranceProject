class AccountPage < SitePrism::Page
    set_url '/account'

    def startQuotation(insurance_type)
        find(:xpath,"//a[text()='COTAR SEGURO #{insurance_type.upcase}']").click
    end    

end    
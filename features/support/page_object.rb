Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file }

module PageObjects

    def home
        @home ||= YouseHomePage.new
    end

    def user
        @user ||= YouseUserPage.new
    end

    def account
        @account ||= AccountPage.new
    end

    def auto_insured
        @auto_insured ||= InsuranceAutoPage.new
    end    

    def auto_quotation
        @auto_quotation ||= AutoQuotationPage.new
    end 
    
    def auto_coverage
        @auto_coverage ||= AutoCoveragePage.new
    end    

end
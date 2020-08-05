require_relative 'youse_home_header.rb'

class YouseHomePage < SitePrism::Page
    set_url '/'

    section :header, YouseHomeHeader, '.View__StyledView-sc-1kmgy0v-0.kBwnXA'

    def userLogin 
        header.loginButton.click
    end    

end
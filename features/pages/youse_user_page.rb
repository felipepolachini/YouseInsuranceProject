class YouseUserPage < SitePrism::Page
    set_url '/users/'
    
    element :emailField, '#email'
    
    element :passwordField, '#user_password'

    element :emailSubmitButton, '.button.button-highlight.button--centered'

    
    def setEmail
        emailField.set CONFIG['email']
        emailSubmitButton.click
    end   

    def setPassword
        passwordField.set CONFIG['password']
        emailSubmitButton.click
    end   

end   
module Helper
    def take_printscr(filename, result)
       path = "features/results/screenshots/test_#{result}"
       photo = "#{path}/#{filename}.png"
       page.save_screenshot(photo)
       embed(photo, 'image/png', 'Clique aqui')
    end
   end
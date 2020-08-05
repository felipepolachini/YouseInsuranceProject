After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/,'_').tr('/','_')
 
    if scenario.failed?
        take_printscr(scenario_name.downcase!, 'failed')
    else
        take_printscr(scenario_name.downcase!, 'passed')
    end
 end
Then(/^I input enter key into input field having (.+) "([^\"]*)"$/) do |type, access_name|
  validate_locator type
  input_enter_key(type, access_name)
end

def input_enter_key(access_type, access_name)
    $driver.find_element(:"#{access_type}" => "#{access_name}").send_keys("\n")
end
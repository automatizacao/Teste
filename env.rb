require "cucumber"
require "watir"
require "rspec"

driver = Watir::Browser.new :ie
driver.goto 'http://www.walmart.com.br'
$driver = driver


at_exit do
  #$driver.clos
end
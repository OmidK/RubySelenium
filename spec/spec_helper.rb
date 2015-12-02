require 'selenium-webdriver'
require 'pry'
require 'require_all'
require_all 'page_objects'

#http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.before(:each) do
    @driver = Selenium::WebDriver.for :firefox
  end

  config.after(:each) do
    @driver.close
  end
end
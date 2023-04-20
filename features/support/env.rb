require 'allure-cucumber'

AllureCucumber.configure do |config|
  config.results_directory = 'report/allure-results'
  config.clean_results_directory = true # set 'false' to see runs trend
end

at_exit do
  system('allure generate results/report/allure-results --clean')
end

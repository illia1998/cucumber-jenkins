require 'allure-cucumber'

AllureCucumber.configure do |config|
  config.results_directory = 'results/allure-results'
  config.clean_results_directory = true # set 'false' to see runs trend
end

require 'selenium-webdriver'
require 'rubygems'
require 'allure-cucumber'

AllureCucumber.configure do |c|
   c.output_dir = "/output/report"
end
AllureCucumber.configure do |c|
  c.clean_dir  = true
end

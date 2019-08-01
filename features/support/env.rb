<<<<<<< HEAD
require 'allure-cucumber'
=======
require 'selenium-webdriver'
require 'rubygems'
require 'allure-cucumber'
require 'allure-cucumber/dsl'
require 'capybara/cucumber'
require 'allure-ruby-adaptor-api'
require 'capybara'
require 'rspec'

World(Capybara::DSL)



Cucumber::Core::Test::Step.module_eval do
  def name
    return text if self.text == 'Before hook'
    return text if self.text == 'After hook'
    "#{source.last.keyword}#{text}"
  end
end

#include AllureCucumber::DSL
#screenshot = '/data/allure-reports/batata.png'
#include AllureCucumber::DSL
#After do
#  attach_file("screenshot", File.open("/allure-reports/data/attachments"))
#end
AllureCucumber.configure do |c|
   c.output_dir = "/output/report"
   c.clean_dir  = true
   c.tms_prefix      = '@HIPTEST--'
   c.issue_prefix    = '@JIRAYA++'
   c.severity_prefix = '@URGENCY:'
   #c.output_dir = '/data/allure-reports/'
   #c.attach_file("screenshot", screenshot)
end
>>>>>>> origin/master

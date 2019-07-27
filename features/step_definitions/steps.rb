require 'selenium-webdriver'
require 'rubygems'
driver = Selenium::WebDriver.for :chrome

Given(/^I Open github$/) do
  driver.get 'https://github.com/'
  sleep(2)
end

Given(/^I Type wisanggeni\-automation\-framework$/) do
  driver.find_element(:xpath,"html/body/div[1]/header/div/div/div/div/form/label/input[1]").click
  driver.find_element(:xpath,"html/body/div[1]/header/div/div/div/div/form/label/input[1]").send_keys "wisanggeni-automation-framework"
  driver.find_element(:xpath,"html/body/div[1]/header/div/div/div/div/form/label/input[1]").send_keys:return
  sleep(2)
end

Then(/^I Want to clone wisanggeni\-automation\-framework$/) do
  driver.find_element(:xpath,"//*[@id='js-pjax-container']/div[2]/div/div[1]/ul/div/div[1]/h3/a").text.include?"wisanggeni"
  driver.find_element(:xpath,"//*[@id='js-pjax-container']/div[2]/div/div[1]/ul/div/div[1]/h3/a").click
  sleep(2)
  driver.find_element(:xpath,"//*[@id='js-repo-pjax-container']/div[2]/div[1]/div[4]/div[1]/button").click
  driver.find_element(:xpath,"//*[@id='js-repo-pjax-container']/div[2]/div[1]/div[4]/div[1]/div/div/div[2]/a[1]").click
end
Then(/^I Want to download wisanggeni\-automation\-framework$/) do
  driver.find_element(:xpath,"//*[@id='js-pjax-container']/div[2]/div/div[1]/ul/div/div[1]/h3/a").text.include?"wisanggeni"
  driver.find_element(:xpath,"//*[@id='js-pjax-container']/div[2]/div/div[1]/ul/div/div[1]/h3/a").click
  sleep(2)
  driver.find_element(:xpath,"//*[@id='js-repo-pjax-container']/div[2]/div[1]/div[4]/div[1]/button").click
  #making failed in the line bellow
  driver.find_element(:xpath,"//*[@id='js-repo-pjax-container']/div[2]/div[1]/div[4]/div[1]/div/div/div[2]/a[1aa]").click
end

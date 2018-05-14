require "Eventer/version"

if Gem::Specification::find_all_by_name('watir-webdriver').any?
  require 'Eventer/watir-webdriver'
end 

if Gem::Specification::find_all_by_name('selenium-webdriver').any?
  require 'Eventer/selenium-webdriver'
end

if Gem::Specification::find_all_by_name('capybara').any?
  require 'Eventer/capybara_rspec_helper'
  require 'Eventer/capybara_element'
end
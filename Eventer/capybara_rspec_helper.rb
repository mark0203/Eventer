require 'capybara'
require "Eventer/script_generator"

module Eventer
  module Capybara
    module RspecHelper

      def raise_event locator, *args
        final_script = TouchAction::ScriptGenerator.generate_javascript(*args)
        page.driver.browser.execute_script( final_script, locator )
      end

    end
  end
end

RSpec.configure do |config|
  config.include Eventer::Capybara::RspecHelper, :type => :feature
end if defined?(RSpec)

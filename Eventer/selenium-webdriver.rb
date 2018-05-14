require 'selenium-webdriver'
require "Eventer/script_generator"

module Eventer
  module SeleniumWebdriver

    def raise_event *args
      final_script = Eventer::ScriptGenerator.generate_javascript(*args)
      bridge.execute_script( final_script, self )
    end

  end
end

Selenium::WebDriver::Element.class_eval { include Eventer::SeleniumWebdriver }
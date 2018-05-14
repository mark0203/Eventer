require 'capybara'
require "Eventer/script_generator"

module Eventer
  module CapybaraElement

    def raise_event *args
      final_script = Eventer::ScriptGenerator.generate_javascript(*args)
      driver.browser.execute_script(final_script, base.native)
    end

  end
end

Capybara::Node::Element.class_eval { include Eventer::CapybaraElement }
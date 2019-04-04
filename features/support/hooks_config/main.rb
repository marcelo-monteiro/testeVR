# frozen_string_literal: true

%w[
  ./report
].each { |dependency| require_relative dependency }

# Class to deal with Hooks configuration
class HooksConfig
  class << self
    include ReportConfig

    def break_point(context)
      binding.pry
    end

    def take_screenshot(scenario, condition = true)
      super
    end

    def report_generate(report_title)
      super
    end
  end
end

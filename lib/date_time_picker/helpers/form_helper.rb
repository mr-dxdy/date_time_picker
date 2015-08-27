module DateTimePicker
  module Helpers
    module FormHelper
      %w(date_time_picker date_picker).each do |selector|
        define_method(selector) do |object_name, method, options = {}|
          klass = "DateTimePicker::Helpers::Tags::#{selector.camelcase}Field".constantize
          klass.new(object_name, method, self, options).render
        end
      end
    end
  end
end

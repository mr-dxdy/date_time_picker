module DateTimePicker
  module Helpers
    module FormBuilderHelper
      %w(date_time_picker date_picker).each do |selector|
        define_method(selector) do |method, options = {}|
          @template.send selector, @object_name, method, objectify_options(options)
        end
      end
    end
  end
end

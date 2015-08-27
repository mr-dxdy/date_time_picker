module DateTimePicker
  module Helpers
    module FormTagHelper
      def date_time_picker_tag(name, value = nil, options = {})
        default_options = Tags::DateTimePickerField.default_options

        options = options.deep_stringify_keys
        options = default_options.deep_merge(options)

        text_field_tag(
          name,
          Tags::DateTimePickerField.formatting(value, options),
          options
        )
      end

      def date_picker_tag(name, value = nil, options = {})
        default_options = Tags::DatePickerField.default_options

        date_time_picker_tag(
          name,
          value,
          default_options.deep_merge(options.deep_stringify_keys)
        )
      end
    end
  end
end

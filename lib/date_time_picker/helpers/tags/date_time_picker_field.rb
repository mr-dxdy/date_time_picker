module DateTimePicker
  module Helpers
    module Tags
      class DateTimePickerField < ActionView::Helpers::Tags::TextField
        class << self
          def default_options
            {
              "data" => {
                "behaviour" => :datetimepicker,
                "format" => DateTimePicker.date_time_format
              }
            }
          end

          def formatting(value, options)
            data = options.fetch("data", {})
            format = data["format"]

            raise ArgumentError.new "attribute data-format is missing" unless format

            DateTimePicker.formatter.call(value, format)
          end
        end

        def render
          options = @options.deep_stringify_keys
          options = default_options.deep_merge(options)
          options["value"] ||= self.class.formatting value(object), options

          @options = options
          super
        end

        def default_options
          self.class.default_options
        end

         def field_type
          "text"
         end
      end
    end
  end
end

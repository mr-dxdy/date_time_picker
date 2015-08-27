module DateTimePicker
  module Helpers
    module Tags
      class DatePickerField < DateTimePickerField
        class << self
          def default_options
            {
              "data" => {
                "behaviour" => :datepicker,
                "format" => DateTimePicker.date_format
              }
            }
          end
        end
      end
    end
  end
end

require "active_support/core_ext/object/try"

module DateTimePicker
  class Formatter
    def call(value, format)
      format_date datetime_value(value), format
    end

    private

    def format_date(value, format)
      value.try(:strftime, format) rescue nil
    end

    def datetime_value(value)
      if value.is_a? String
        DateTime.parse(value) rescue nil
      else
        value
      end
    end
  end
end

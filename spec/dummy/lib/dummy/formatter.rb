module Dummy
  class Formatter < ::DateTimePicker::Formatter
    def call(value, format)
      "#{value} #{format}"
    end
  end
end

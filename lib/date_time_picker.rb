require "date_time_picker/version"
require "date_time_picker/formatter"

module DateTimePicker
  class << self
    attr_accessor :formatter,
      :date_format,
      :date_time_format

    def configure
      yield self
    end
  end

  configure do |config|
    config.formatter = Formatter.new
    config.date_format = '%d/%m/%Y'
    config.date_time_format = '%d/%m/%Y %H:%M'
  end
end

require "date_time_picker/railtie" if defined?(Rails)

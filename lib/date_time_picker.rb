require "active_support/inflector"
require "active_support/core_ext/object/try"
require "active_support/core_ext/hash"
require "action_view"

require "date_time_picker/version"
require "date_time_picker/formatter"
require "date_time_picker/helpers"

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

ENV["RAILS_ENV"] ||= 'test'
require 'spec_helper'
require File.expand_path("../dummy/config/environment", __FILE__)
require 'rspec/rails'

RSpec.configure do |config|
  config.include ActionView::Helpers
  config.include ActionView::Context

  def protect_against_forgery?
    false
  end
end

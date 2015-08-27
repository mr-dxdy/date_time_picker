# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'date_time_picker/version'

Gem::Specification.new do |spec|
  spec.name          = "date_time_picker"
  spec.version       = DateTimePicker::VERSION
  spec.authors       = ["German Antsiferov"]
  spec.email         = ["dxdy@bk.ru"]

  spec.summary       = %q{Rails extension for Datetime inputs: date_time_picker_tag and date_picker_tag.}
  spec.description   = %q{DateTimePicker holds a few helpers method to help you to add a date picker field into your views.}
  spec.homepage      = "https://github.com/mr-dxdy/date_time_picker"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 3.0.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

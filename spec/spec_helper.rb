$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'date_time_picker'

# TODO: Go to Rails::Dummy!
ActionView::Helpers::FormTagHelper.send(:include, DateTimePicker::Helpers::FormTagHelper)
ActionView::Helpers::FormHelper.send(:include, DateTimePicker::Helpers::FormHelper)
ActionView::Helpers::FormBuilder.send(:include, DateTimePicker::Helpers::FormBuilderHelper)

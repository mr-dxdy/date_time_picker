# DateTimePicker (deprecated)

DateTimePicker holds a few helpers method to help you to add a date picker field into your views, they are:

* date_time_picker_tag(name, value = nil, options = {})
* date_picker_tag(name, value = nil, options = {})
* date_time_picker(object_name, method, options = {})
* date_picker(object_name, method, options = {})

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'date_time_picker', github: 'mr-dxdy/date_time_picker'
```

## Configuration

You can pass configuration options as a block to `DateTimePicker`:

```ruby
DateTimePicker.configure do |config|
  config.formatter = DateTimePicker::Formatter.new
  config.date_format = '%d/%m/%Y'
  config.date_time_format = '%d/%m/%Y %H:%M'
end
```

## Usage examples

```ruby
date_time_picker_tag(:date, '27/09/2015 15:00')
# => <input type="text" name="date" id="date" value="27/09/2015 15:00" data-behaviour="datetimepicker" data-format="%d/%m/%Y %H:%M" />

date_time_picker_tag(:date, '27/09/2015 15:00', data: { format: '%d-%m-%Y' }, class: 'datetimepicker')
# => <input type="text" name="date" id="date" value="27-09-2015" data-behaviour="datetimepicker" data-format="%d-%m-%Y" class="datetimepicker" />

form_for @post do |f|
  f.date_time_picker :date
end

# => <form class="edit_post" id="edit_post_1" action="/" accept-charset="UTF-8" method="post">
#  <input data-behaviour="datepicker" data-format="%d/%m/%Y" value="27/08/2015" type="text" name="post[date]" id="post_date" />
#</form>
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mr-dxdy/date_time_picker.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


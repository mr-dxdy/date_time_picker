require 'spec_helper'

describe DateTimePicker::Helpers::FormTagHelper do
  include ActionView::Helpers::FormTagHelper

  let(:value) { DateTime.now }
  let(:name) { :date }

  let(:date_time_format) { DateTimePicker.date_time_format }
  let(:date_format) { DateTimePicker.date_format }

  let(:formatter) { DateTimePicker::Formatter.new }

  context '#datetime_picker_tag' do
    it 'should attribute value is type of text' do
      expect(
        date_time_picker_tag(name, value)
      ).to match('type="text"')
    end

    it 'should exist data attribute behaviour' do
      expect(
        date_time_picker_tag(name, value)
      ).to match('data-behaviour="datetimepicker"')
    end

    context 'should to be able set format' do
      let(:format)  { "%d-%Y" }

      it 'when key is type of Symbol' do
        expect(
          date_time_picker_tag(name, value, data: { format: format })
        ).to match(formatter.call(value, format))
      end

      it 'when key is type of String' do
        expect(
          date_time_picker_tag(name, value, 'data' => { 'format' => format })
        ).to match(formatter.call(value, format))
      end
    end

    it 'should exist data attribute format' do
      expect(
        date_time_picker_tag(name, value)
      ).to match("data-format=\"#{date_time_format}\"")
    end

    it 'should to able set html class' do
      expect(
        date_time_picker_tag(name, value, class: %w(datepicker datepicker__size_small))
      ).to match('class="datepicker datepicker__size_small"')
    end

    it 'should to able set data-attributes' do

      expect(
        date_time_picker_tag(name, value, data: { color: 'red' })
      ).to match('data-color="red"')
    end
  end

  context '#date_picker_tag' do
    it 'should exist data attribute behaviour' do
      expect(
        date_picker_tag(name, value)
      ).to match('data-behaviour="datepicker"')
    end

    it 'should exist data attribute format' do
      expect(
        date_picker_tag(name, value)
      ).to match("data-format=\"#{date_format}\"")
    end
  end
end

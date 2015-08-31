require 'rails_helper'

describe DateTimePicker::Helpers::FormHelper do
  let(:object_name) { "post" }
  let(:method) { "description" }
  let(:value) { DateTime.now }

  let(:date_time_format) { DateTimePicker.date_time_format }
  let(:date_format) { DateTimePicker.date_format }

  let(:formatter) { DateTimePicker::Formatter.new }

  context '#date_time_picker' do
    it 'should attribute value is type of text' do
      expect(
        date_time_picker(object_name, method)
      ).to match('type="text"')
    end

    it 'should exist attribute name' do
      expect(
        date_time_picker(object_name, method)
      ).to match(/name="post\[description\]"/)
    end

    it 'should exist attribute id' do
      expect(
        date_time_picker(object_name, method)
      ).to match('id="post_description"')
    end

    it 'should exist data attribute behaviour' do
      expect(
        date_time_picker(object_name, method)
      ).to match('data-behaviour="datetimepicker"')
    end

    context 'should to be able set format' do
      let(:format)  { "%d-%Y" }

      let(:result) do
        "<input data-behaviour=\"datetimepicker\" data-format=\"%d-%Y\" type=\"text\" name=\"post[description]\" id=\"post_description\" />"
      end

      it 'when key is type of Symbol' do
        expect(
          date_time_picker(object_name, method, data: { format: format })
        ).to eq(result)
      end

      it 'when key is type of String' do
        expect(
          date_time_picker(object_name, method, 'data' => { 'format' => format })
        ).to eq(result)
      end
    end

    it 'should exist data attribute format' do
      expect(
        date_time_picker(object_name, method)
      ).to match("data-format=\"#{date_time_format}\"")
    end

    it 'should to able set html class' do
      expect(
        date_time_picker(object_name, method, class: %w(datepicker datepicker__size_small))
      ).to match('class="datepicker datepicker__size_small"')
    end

    it 'should to able set data-attributes' do

      expect(
        date_time_picker(object_name, method, data: { color: 'red' })
      ).to match('data-color="red"')
    end
  end

  context '#date_picker' do
    it 'should exist data attribute behaviour' do
      expect(
        date_picker(object_name, method)
      ).to match('data-behaviour="datepicker"')
    end

    it 'should exist data attribute format' do
      expect(
        date_picker(object_name, method)
      ).to match("data-format=\"#{date_format}\"")
    end
  end
end

require 'rails_helper'

describe DateTimePicker::Helpers::FormBuilderHelper do
  let(:date_time_format) { DateTimePicker.date_time_format }
  let(:date_format) { DateTimePicker.date_format }

  let(:formatter) { DateTimePicker::Formatter.new }

  context 'when object is new_record' do
    let(:post) { Post.new }

    it 'should render #date_time_picker' do
      expect(
        form_for(post, url: '/') do |f|
          f.date_time_picker :date
        end
      ).to match(/<input data-behaviour="datetimepicker" data-format="%d\/%m\/%Y %H:%M" type="text" name="post\[date\]" id="post_date" \/>/)
    end

    it 'should render #date_picker' do
      expect(
        form_for(post, url: '/') do |f|
          f.date_picker :date
        end
      ).to match(/<input data-behaviour="datepicker" data-format="%d\/%m\/%Y" type="text" name="post\[date\]" id="post_date" \/>/)
    end
  end

  context 'when object is persisted' do
    let(:id) { 1 }
    let(:title) { 'Hello world!' }
    let(:date) { DateTime.now }

    let(:post) { Post.new id, title, date }

    it 'should render #date_time_picker' do
      expect(
        form_for(post, url: '/') do |f|
          f.date_time_picker :date
        end
      ).to match(formatter.call(date, date_time_format))
    end

    it 'should render #date_picker' do
      expect(
        form_for(post, url: '/') do |f|
          f.date_picker :date
        end
      ).to match(formatter.call(date, date_format))
    end
  end
end

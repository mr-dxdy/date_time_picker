require 'rails_helper'

describe DateTimePicker::Formatter do
  subject { DateTimePicker::Formatter.new }

  let(:date_format) { DateTimePicker.date_format }
  let(:date_time_format) { DateTimePicker.date_time_format }

  context 'when valid value' do

    [ '09/05/1945', DateTime.now ].each do |value|
      it "is type of #{value.class.name}" do
        expect(subject.call(value, date_format)).to be_is_a(String)
      end
    end
  end

  context 'when invalid value' do

    [ 'bla-bla', nil, '', 0 ].each do |value|
      it "is #{value.inspect}" do
        expect(subject.call(value, date_format)).to be_nil
      end
    end
  end
end

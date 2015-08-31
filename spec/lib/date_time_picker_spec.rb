require 'rails_helper'

describe DateTimePicker do
  subject { DateTimePicker }

  context '.configure' do
    let(:value) { '09/05/1945' }
    let(:format) { '%d/%m/%Y' }

    it 'should be able to set formatter' do
      formatter = Dummy::Formatter.new
      subject.formatter = formatter

      expect(
        subject.formatter.call(value, format)
      ).to eq(formatter.call(value, format))
    end

    it 'should be able to set date_format' do
      subject.date_format = format
      expect(subject.date_format).to eq(format)
    end

    it 'should be able to set date_time_format' do
      subject.date_time_format = format
      expect(subject.date_time_format).to eq(format)
    end
  end
end

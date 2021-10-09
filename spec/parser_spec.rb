# frozen_string_literal: true

require_relative '../file_locator'

RSpec.describe FileLocator do
  subject(:parser) { described_class.new('webserver.log') }

  context 'log file does not exist' do
    subject(:parser) { described_class.new('webserver123.log') }

    describe '#valid_path?' do
      it 'returns false' do
        expect(subject.send(:valid_path?)).to be false
      end
    end

    describe '#raise_error' do
      it 'raises error' do
        expect { subject.send(:raise_error) }.to raise_error(ArgumentError, 'Provide a valid path to your log file')
      end
    end

    describe 'call an executable command' do
    end
  end

  context 'log file does exist' do
    describe '#valid_path?' do
      it 'returns false' do
        expect(subject.send(:valid_path?)).to be true
      end
    end

    describe '#raise_error?' do
      it 'returns false' do
        expect(subject.send(:raise_error)).to be_falsey
      end
    end
  end
end

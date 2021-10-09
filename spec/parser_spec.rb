# frozen_string_literal: true

require_relative '../parser'

RSpec.describe Parser do
  subject(:parser) { described_class.new('webserver.log') }

  context 'log file does not exist' do
    describe '#valid_path?' do
      subject(:parser) { described_class.new('webserver123.log') }

      it 'returns false' do
        expect(subject.send(:valid_path?)).to be false
      end
    end
  end

  context 'log file does exist' do
    describe '#valid_path?' do
      it 'returns false' do
        expect(subject.send(:valid_path?)).to be true
      end
    end
  end
end

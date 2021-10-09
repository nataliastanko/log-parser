# frozen_string_literal: true

require_relative '../lib/command_option_provider'

RSpec.describe CommandOptionProvider do
  subject(:option_provider) { described_class.new }

  let(:invalid_option) { described_class.new(['--parse-now']) }

  context 'given no arguments' do
    it 'returns empty list of arguments' do
      expect(option_provider.options).to eq([])
    end
  end

  context 'arguments given' do
    context 'invalid option given' do
      it 'raises error' do
        expect { invalid_option }.to raise_error(OptionParser::InvalidOption)
      end
    end
  end
end

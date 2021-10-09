# frozen_string_literal: true

require_relative '../file_locator'

RSpec.describe 'executable ./bin/parser command called' do
  context 'log file does not exist' do
    it 'prints on standard output' do
      expect { system %(echo './bin/parser') }.to output('').to_stdout
    end
  end

  context 'log file does exist' do
    it 'prints on standard output' do
      expect { system %(echo './bin/parser webserver.log') }.to output('').to_stdout
    end
  end
end

# frozen_string_literal: true

RSpec.describe 'CLI ./bin/parser options provided' do
  subject { system './bin/parser' }

  context 'if log file param not present' do
    it { expect { subject }.to output.to_stdout_from_any_process }

    specify 'prints on standard output' do
      expect { subject }.to output("[]\n").to_stdout_from_any_process
    end
  end

  context 'if log file does not exist' do
    subject { system "./bin/parser #{filename}" }
    let(:filename) { 'webserver123.log' }
    # let(:file_missing_message) { 'Provide a valid path to your log file' }
    it { expect { subject }.to output.to_stdout_from_any_process }

    specify 'prints on standard output' do
      expect { subject }.to output(/webserver123.log/).to_stdout_from_any_process
    end
  end

  context 'if log file does exist' do
    subject { system './bin/parser webserver.log' }

    it { expect { subject }.to output.to_stdout_from_any_process }

    specify 'prints on standard output' do
      expect { subject }.to output(/webserver.log/).to_stdout_from_any_process
    end
  end
end

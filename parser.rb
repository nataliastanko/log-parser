# frozen_string_literal: true

class Parser
  def initialize(file_path)
    @file_path = file_path
  end

  protected

  def valid_path?
    File.exist?(@file_path) ? true : false
  end
end

# frozen_string_literal: true

##
# Class for locating the file
class FileLocator
  def initialize(file_path)
    @file_path = file_path
  end

  protected

  def valid_path?
    File.exist?(@file_path) ? true : false
  end

  def raise_error
    raise ArgumentError, 'Provide a valid path to your log file' unless valid_path?
  end
end

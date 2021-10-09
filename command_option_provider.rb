# frozen_string_literal: true

require 'optparse'

##
# Provides command options
class CommandOptionProvider
  attr_reader :options

  def initialize(input = [])
    @options = {}
    option_parser = OptionParser.new
    @options = option_parser.parse(input)
  end
end

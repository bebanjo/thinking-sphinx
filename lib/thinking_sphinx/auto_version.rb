module ThinkingSphinx
  class AutoVersion
    def self.detect
      version = ThinkingSphinx::Configuration.instance.version
      case version
      when '0.9.8', '0.9.9'
        require "riddle/#{version}"
      when /1.10/
        require 'riddle/1.10'
      when /2.0.[12]/
        require 'riddle/2.0.1'
      when /2.0.[^12]/, /2.1.\d/
        require 'riddle/2.1.0'
      end
    end
  end
end

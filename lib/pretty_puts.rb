require "pretty_puts/version"
require "pretty_puts/config"
require "rainbow"

module PrettyPuts
  def self.success(message)
    puts_with_color message, Config.success_color
  end

  def self.warn(message)
    puts_with_color message, Config.warn_color
  end

  def self.error(message)
    puts_with_color message, Config.error_color
  end

  def self.command(message)
    puts_with_color message, Config.command_color
  end

  def self.puts_with_color(message, color)
    puts Rainbow(message).fg color
  end
end

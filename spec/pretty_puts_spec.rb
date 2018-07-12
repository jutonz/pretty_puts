require "spec_helper"
require "pretty_puts/config"

RSpec.describe PrettyPuts do
  it "has a version number" do
    expect(PrettyPuts::VERSION).not_to be nil
  end

  describe ".success" do
    it "uses the config color" do
      message = "wee"

      expect(PrettyPuts).to receive(:puts_with_color)
        .with(message, PrettyPuts::Config.success_color)

      PrettyPuts.success(message)
    end
  end

  describe ".warn" do
    it "uses the config color" do
      message = "wee"

      expect(PrettyPuts).to receive(:puts_with_color)
        .with(message, PrettyPuts::Config.warn_color)

      PrettyPuts.warn(message)
    end
  end

  describe ".error" do
    it "uses the config color" do
      message = "wee"

      expect(PrettyPuts).to receive(:puts_with_color)
        .with(message, PrettyPuts::Config.error_color)

      PrettyPuts.error(message)
    end
  end

  describe ".command" do
    it "uses the config color" do
      message = "wee"

      expect(PrettyPuts).to receive(:puts_with_color)
        .with(message, PrettyPuts::Config.command_color)

      PrettyPuts.command(message)
    end
  end
end

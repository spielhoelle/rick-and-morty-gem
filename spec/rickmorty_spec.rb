require "spec_helper"
require "rickmorty"
PROJECT_ROOT = File.expand_path("../..", __FILE__)

RSpec.describe Rickmorty, :type => :controller do
  subject { Rickmorty.new }
  it "has a version number" do
    expect(Rickmorty::VERSION).not_to be nil
  end
end

Dir.glob(File.join(PROJECT_ROOT, "lib", "*.rb")).each do |file|
  require file
end


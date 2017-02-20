require "spec_helper"

RSpec.describe Pod::Spec do
  it "has a version number" do
    expect(Pod::Spec::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end

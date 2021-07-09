require 'rails_helper'

RSpec.describe Cohort, type: :model do
  subject { Cohort.new(name: "Charms")}  

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name=nil
    expect(subject).to_not be_valid
  end
end

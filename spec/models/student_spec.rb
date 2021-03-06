require 'rails_helper'

RSpec.describe Student, type: :model do
  subject { Student.new(first_name: "Jack", last_name: "Smith", house_id: 1)}  

  it "is valid with valid attributes" do
    House.create(name:'Gryffindor')
    expect(subject).to be_valid
  end

  it "is not valid without a first_name" do
    subject.first_name=nil
    expect(subject).to_not be_valid
  end
  
  it "is not valid without a last_name" do
    subject.last_name=nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a house_id" do
    subject.house_id=nil
    expect(subject).to_not be_valid
  end
end

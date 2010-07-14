require 'spec_helper'

describe CrimeMailer do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    CrimeMailer.create!(@valid_attributes)
  end
end

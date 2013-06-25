require "spec_helper"

describe Post do
  
  it "has a valid factory" do
    FactoryGirl.create(:post).should be_valid
  end
    
end
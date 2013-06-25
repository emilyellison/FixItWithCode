require "spec_helper"

describe Comment do
  
  it "has a valid factory" do
    FactoryGirl.create(:comment).should be_valid
  end
  
  it "is invalid without a post attached" do
    FactoryGirl.build(:comment, post_id: nil).should be_invalid
  end
  
  it "is invalid without content" do
    FactoryGirl.build(:comment, content: nil).should be_invalid
  end
  
end
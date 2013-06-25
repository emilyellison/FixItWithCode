require "spec_helper"

describe Administrator do
  
  it "has a valid factory" do
    FactoryGirl.create(:administrator).should be_valid
  end
  
  it "is invalid without a first name" do
    FactoryGirl.build(:administrator, first_name: nil).should be_invalid
  end
  
  it "is invalid without a last name" do
    FactoryGirl.build(:administrator, last_name: nil).should be_invalid
  end
  
  it "is invalid without a email" do
    FactoryGirl.build(:administrator, email: nil).should be_invalid
  end
  
  it "is invalid with a bogus email" do
    FactoryGirl.build(:administrator, email: "fakeemail.com").should be_invalid
  end
  
  it "is invalid with a duplicate email" do
    FactoryGirl.create(:administrator, email: 'my_fake_email@gmail.com')
    FactoryGirl.build(:administrator, email: 'my_fake_email@gmail.com').should be_invalid
  end
  
  it "is invalid with a duplicate uppercase email" do
    FactoryGirl.create(:administrator, email: 'my_fake_email@gmail.com')
    FactoryGirl.build(:administrator, email: 'MY_FAKE_EMAIL@GMAIL.COM').should be_invalid
  end
  
end
FactoryGirl.define do
  
  boolean = [ true, false ]
  
  factory :comment do
    name            { Faker::Lorem.words }
    content         { Faker::Lorem.paragraphs }
    approved        { boolean.sample }
    post_id         { FactoryGirl.create(:post) } 
  end

end
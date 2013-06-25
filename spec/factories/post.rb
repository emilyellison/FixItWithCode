FactoryGirl.define do
  
  boolean = [ true, false ]
  
  factory :post do
    title               { Faker::Lorem.words }
    content             { Faker::Lorem.paragraphs }
    approved            { boolean.sample }
    administrator_id    { FactoryGirl.create(:administrator) } 
  end

end
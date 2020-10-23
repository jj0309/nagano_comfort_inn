FactoryGirl.define do

  factory :room do
    room_num 5
    status true
    price 500.25
  end

  factory :client do
    name "arthax leGrand"
    email "arthax@gmail.com"
    age 35
  end

end
FactoryGirl.define do

  factory :room do
    room_num 5
    status true
    num_of_guess 2
    view_type_id 1
    room_type_id 1
  end

  factory :client do
    name "arthax leGrand"
    password "aaaAAA111"
    email "arthax@gmail.com"
    password_confirmation "aaaAAA111"
  end

end

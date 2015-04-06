FactoryGirl.define do
  factory :user do
    first_name 'Rokibul'
    last_name 'Hasan'
    email 'rakib@gmail.com'
    password '12345678'

    factory :invalid_user do
      first_name nil
      password '12345678'
    end
  end

end

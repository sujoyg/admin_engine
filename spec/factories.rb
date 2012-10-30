FactoryGirl.define do
  factory :admin do
    user_id { create(:user).id }
  end

  factory :user do
    email { random_email }
  end
end
FactoryGirl.define do
  factory :admin do
    account_id { create(:account).id }
  end

  factory :account do
    email { random_email }
    password { random_text }
  end
end

FactoryGirl.define do
  factory :admin do
    account_id { create(:account).id }
  end

  factory :account do
    email { random_email }
  end
end
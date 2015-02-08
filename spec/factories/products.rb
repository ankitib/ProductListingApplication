FactoryGirl.define do
  factory :product do
    name  { Faker::Commerce.product_name }
    price  { Faker::Commerce.price }
    description  { Faker::Lorem.sentence }
  end

  factory :invalid_product do [f]
    name  { Faker::Commerce.product_name }
    price  { Faker::Commerce.price }
    description  { nil }
  end

end

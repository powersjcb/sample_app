FactoryGirl.define do
  factory :user do
    name    "Jacob Powers"
    email   "powersjcb@gmail.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
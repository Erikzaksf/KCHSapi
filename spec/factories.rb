require 'faker'



FactoryBot.define do
  factory :user do
    name "MyString"
    email "MyString"
    password "MyString"
    password_confirmation "MyString"
  end

  factory :animal do
    animal = Animal.create!
    name Faker::Dog.name
    breed Faker::Dog.breed
    age Faker::Number.between(1, 12)
    species "K9"
    gender Faker::Demographic.sex
    about Faker::Dog.meme_phrase
  end
end

20.times do |i|
  animal = Animal.create!(
    name: Faker::Dog.name,
    breed: Faker::Dog.breed,
    age: Faker::Number.between(1, 12),
    species: "K9",
    gender: Faker::Demographic.sex,
    about: Faker::Dog.meme_phrase
  )
end

namespace :dev do
  desc "Sets up the development environment"
  task setup: :environment do
    100.times do |i|
      Person.create!(
        name: Faker::Name.name,
        description: Faker::Name.title
      )
    end
  end

end

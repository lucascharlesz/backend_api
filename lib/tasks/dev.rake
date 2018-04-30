namespace :dev do
  desc "Sets up the development environment"
  task setup: :environment do
    100.times do |i|
      Person.create!(
        name: Faker::Name.name,
        description: Faker::Name.title
      )
    end

    Organization.create(name: 'Dreamsoft')

    Apartment::Tenant.create('dreamsoft')
    Apartment::Tenant.switch('dreamsoft') do
      User.create!(email: 'lucas@dreamsoft.com', 
                  password: '12345678', 
                  password_confirmation: '12345678')
    end
  end
end

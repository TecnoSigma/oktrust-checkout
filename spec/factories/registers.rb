FactoryBot.define do
  factory :register, class: Hash do
    name { Faker::Name.name }
    cpf { Faker::Base.regexify('\d{3}.\d{3}.\d{3}-\d{2}') }
    company { Faker::Company.name }
    cnpj { Faker::Base.regexify('\d{2}.\d{3}.\d{3}/\d{4}-\d{2}') }
    responsible { Faker::Name.name }
    phone { Faker::PhoneNumber.cell_phone }
    email { Faker::Internet.email }
    postal_code { Faker::Base.regexify('\d{5}-\d{3}') }
    street { Faker::Address.street_name }
    number { Faker::Address.building_number }
    complement { Faker::Address.secondary_address }
    district { Faker::Address.community }
    city { Faker::Address.city }
    state { Faker::Address.state }
    country { 'Brasil' }
  end
end

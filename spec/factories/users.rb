FactoryBot.define do
  factory :user do
    nickname                { 'test' }
    email                   { 'test@example' }
    password                { 'aaa00000' }
    password_confirmation   { password }
    last_name               { '田中' }
    first_name              { '太郎' }
    last_name_kana          { 'タナカ' }
    first_name_kana         { 'タロウ' }
    birth_date              { '1996-07-07' }
  end
end

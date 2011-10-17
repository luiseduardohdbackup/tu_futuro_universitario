Factory.define :user do |f|
  f.sequence(:email) {|n| "name#{n}@email.com" }
  f.password        'secret'
  f.password_confirmation        'secret'
end


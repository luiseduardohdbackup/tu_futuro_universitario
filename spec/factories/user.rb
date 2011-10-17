Factory.define :user do |f|
  f.sequence(:email) {|n| "name#{n}@email.com" }
  f.role        'student'
  f.name        'Steve Jobs'
  f.password        'secret'
  f.password_confirmation        'secret'
end


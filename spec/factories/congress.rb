Factory.define :congress do |f|
  f.sequence(:title) {|n| "The title#{n}" }
  f.description   "Some interesting description"
  f.start_date          Time.now + 1.day
  f.end_date          Time.now + 10.days
  f.address        'auditorio_luis_elizondo'
end

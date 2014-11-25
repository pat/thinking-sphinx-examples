# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Article.create(
  :subject => 'TDD is not dead', :content => 'DHH was wrong'
).update_column :created_at, 2.weeks.ago

Article.create(
  :subject => 'Ruby is getting faster', :content => 'Thank you Matz and co.'
).update_column :created_at, 5.days.ago

Article.create(
  :subject => 'RubyConf AU is going to rock', :content => 'Yes I am biased'
).update_column :created_at, 1.day.ago

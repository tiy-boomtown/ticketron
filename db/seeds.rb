# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Developer.create([
    { name: 'Tom', retired_at: 6.months.ago },
    { name: 'Dana', retired_at: 3.months.ago },
    { name: 'James' },
    { name: 'Kylie' }
])
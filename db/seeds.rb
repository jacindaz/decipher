# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Phrase.create(slang: "Push that shit",
              description: "A must-shout phrase whenever pushing to github",
              example: "Did you create the models? Sweet! Push that shit!",
              upvotes: 0, downvotes: 0)


Vote.create(phrase_id: 1, vote: 1)

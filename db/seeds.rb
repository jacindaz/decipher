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
              upvotes: 3, downvotes: 1)

Phrase.create(slang: "Dumbstrap",
              description: "When bootstrap is not working properly, all shall refer to it as dumbstrap.",
              example: "Bootstrap, more like dumbstrap.")

Phrase.create(slang: "Refuctoring",
              description: "The process of taking a well-designed piece of code and, through a series of small, reversible changes, making it completely unmaintainable by anyone except yourself.",
              example: "You are just full of refuctoring today",
              upvotes: 8, downvotes: 0)

Phrase.create(slang: "Binding.cry",
              description: "What you feel deep inside when even binding.pry won't fix your buggies. Commence crying for your mummy.",
              example: "Binding dot pry, more like binding dot cry...")

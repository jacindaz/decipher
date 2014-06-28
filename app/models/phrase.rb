class Phrase < ActiveRecord::Base
  has_many :votes

  validate :slang, presence: true, uniqueness: true
  validate :description, presence: true, length: { in: 10..140 }
  validate :example, presence: true, length: { in: 10..140 }
  validate :upvotes, counter_cache: true
  validate :downvotes, counter_cache: true
end

class Vote < ActiveRecord::Base
  belongs_to :phrase

  validate :phrase_id, presence: true, numericality: { integer: true }
  validate :vote, presence: true
  validates_inclusion_of :vote, :in => [-1, 1]
  validates_uniqueness_of :phrase_id, scope: :vote
end

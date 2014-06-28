class Phrase < ActiveRecord::Base
  include PgSearch

  has_many :votes

  validate :slang, presence: true, uniqueness: true
  validate :description, presence: true, length: { in: 10..140 }
  validate :example, presence: true, length: { in: 10..140 }
  validate :upvotes, counter_cache: true
  validate :downvotes, counter_cache: true

  after_save :update_score

  def update_score
    score = get_upvotes + get_downvotes
  end

  def get_upvotes
    self.upvotes
  end

  def get_downvotes
    self.downvotes
  end

    pg_search_scope :loose_search,
                  against: :slang,
                  using: {
                    trigram: {
                      threshold: 0.1
                    }
                  }

    # pg_search_scope :roughly_spelled_like,
    #               :against => :name,
    #               :using => {
    #                 :trigram => {
    #                   :threshold => 0.1
    #                 }
    #               }

end

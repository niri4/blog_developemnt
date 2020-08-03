class Comment < ApplicationRecord
  belongs_to :blog
  has_ancestry
  validates :commenter, presence: true
  validates :body, presence: true
end

class Comment < ApplicationRecord
  belongs_to :blog
  has_ancestry
  validates :commenter, presence: true
  validates :body, presence: true
  paginates_per 5

  def self.fetch_childer_for_roots(roots)
    condition = roots.select{ |r| r }.collect{ |r| "(ancestry like '#{r.id}%' or id = '#{ r.id }')"}.join(' or ')
    root_n_children = Comment.where(condition)
    root_n_children
  end
end

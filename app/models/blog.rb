class Blog < ApplicationRecord
  belongs_to :author
  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true
end

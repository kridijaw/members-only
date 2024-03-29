class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true
  validates :user_id, presence: true
end

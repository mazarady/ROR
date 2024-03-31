class Post < ApplicationRecord
  validates :title, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 50}
  validates :body, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 50}
  
  
end

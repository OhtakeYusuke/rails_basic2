class Post < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true, length: {maximum: 140}
end

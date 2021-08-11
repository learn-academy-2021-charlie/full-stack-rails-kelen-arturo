class Blog < ApplicationRecord
  validates :content, presence: true
  validates :title, presence: true, uniqueness: true, length: { minimum: 10 }
end

class Post < ApplicationRecord
  validates :title, :location, :money, :people, presence: true
end

class Movie < ApplicationRecord
  validates_presence_of :title, :overview
  validates_uniqueness_of :title, :overview

  has_many :bookmarks
end

class List < ApplicationRecord
  validates_presence_of :name
  validates_uniqueness_of :name

  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
end

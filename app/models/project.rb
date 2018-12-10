class Project < ApplicationRecord
  has_many :testemonials, dependent: :destroy
  validates_presence_of :name, :blurb, :location_url, :github_url, :image_url
end

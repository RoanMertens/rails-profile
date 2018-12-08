class Project < ApplicationRecord
  validates_presence_of :name, :blurb, :location_url, :github_url, :image_url
end

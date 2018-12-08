class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :blurb
      t.string :location_url
      t.string :github_url
      t.string :image_url

      t.timestamps
    end
  end
end

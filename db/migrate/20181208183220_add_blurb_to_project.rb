class AddBlurbToProject < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :blurb, :text
  end
end

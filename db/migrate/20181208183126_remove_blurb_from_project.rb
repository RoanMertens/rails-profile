class RemoveBlurbFromProject < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :blurb
  end
end

class CreateTestemonials < ActiveRecord::Migration[5.2]
  def change
    create_table :testemonials do |t|
      t.references :project, foreign_key: true
      t.string :name
      t.string :connection
      t.text :content
      t.integer :rating

      t.timestamps
    end
  end
end

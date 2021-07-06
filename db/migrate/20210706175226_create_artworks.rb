class CreateArtworks < ActiveRecord::Migration[6.1]
  def change
    create_table :artworks do |t|
      t.string :listing_name
      t.string :category
      t.text :description
      t.string :medium
      t.float :height
      t.float :width
      t.string :status
      t.string :url
      t.string :tags
      t.integer :year

      t.timestamps
    end
  end
end

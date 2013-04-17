class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :group_id
      t.datetime :date_uploaded

      t.string :content_type
      t.string :filename
      t.string :thumbnail
      t.integer :size
      t.integer :height
      t.integer :width

      t.timestamps
    end
  end
end

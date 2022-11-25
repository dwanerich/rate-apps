class CreatePlatforms < ActiveRecord::Migration[7.1]
  def change
    create_table :platforms do |t|
      t.string :name
      t.string :img_url
      t.string :slug

      t.timestamps
    end
  end
end

class CreateWhiskies < ActiveRecord::Migration
  def change
    create_table :whiskies do |t|
      t.string :name
      t.string :country
      t.string :region
      t.float :ABV
      t.string :producer

      t.timestamps
    end
  end
end

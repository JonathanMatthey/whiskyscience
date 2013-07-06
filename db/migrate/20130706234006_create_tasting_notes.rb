class CreateTastingNotes < ActiveRecord::Migration
  def change
    create_table :tasting_notes do |t|
      t.string :notes
      t.integer :rating
      t.date :date

      t.timestamps
    end
  end
end

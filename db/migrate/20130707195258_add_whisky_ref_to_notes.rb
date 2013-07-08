class AddWhiskyRefToNotes < ActiveRecord::Migration
  def change
    add_reference :tasting_notes, :whisky, index: true
  end
end

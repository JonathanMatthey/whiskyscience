class AddNotesRefToFlavorWheel < ActiveRecord::Migration
  def change
    add_reference :flavour_wheels, :tasting_note, index: true
  end
end

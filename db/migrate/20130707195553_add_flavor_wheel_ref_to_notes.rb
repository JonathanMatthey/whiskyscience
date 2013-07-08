class AddFlavorWheelRefToNotes < ActiveRecord::Migration
  def change
    add_reference :tasting_notes, :flavour_wheel, index: true
  end
end

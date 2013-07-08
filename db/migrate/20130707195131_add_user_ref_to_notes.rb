class AddUserRefToNotes < ActiveRecord::Migration
  def change
    add_reference :tasting_notes, :user, index: true
  end
end

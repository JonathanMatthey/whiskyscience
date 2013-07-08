class AddAgeToWhisky < ActiveRecord::Migration
  def change
    add_column :whiskies, :age, :integer
  end
end

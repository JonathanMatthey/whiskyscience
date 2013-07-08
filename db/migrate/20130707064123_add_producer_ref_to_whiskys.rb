class AddProducerRefToWhiskys < ActiveRecord::Migration
  def change
    add_reference :whiskies, :producer, index: true
  end
end

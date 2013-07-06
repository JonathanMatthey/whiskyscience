class CreateFlavourWheels < ActiveRecord::Migration
  def change
    create_table :flavour_wheels do |t|
      t.integer :linger
      t.integer :heat_proof
      t.integer :dark_fruit
      t.integer :citrus_punch
      t.integer :floral
      t.integer :spicy
      t.integer :herbal
      t.integer :malty
      t.integer :toffee
      t.integer :woody
      t.integer :tannic
      t.integer :char
      t.integer :sweet
      t.integer :body
      t.integer :legs
      t.integer :balance

      t.timestamps
    end
  end
end

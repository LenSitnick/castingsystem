class Create < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :primary_instrument
      t.string :secondary_instrument
      t.boolean :active
    end
  end
end

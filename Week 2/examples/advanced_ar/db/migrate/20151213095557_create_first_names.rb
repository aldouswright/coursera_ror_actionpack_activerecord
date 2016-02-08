class CreateFirstNames < ActiveRecord::Migration
  def change
    create_table :first_names do |t|
      t.string :last_name
      t.integer :age

      t.timestamps null: false
    end
  end
end

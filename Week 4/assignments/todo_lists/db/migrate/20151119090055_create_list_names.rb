class CreateListNames < ActiveRecord::Migration
  def change
    create_table :list_names do |t|
      t.date :list_due_date

      t.timestamps null: false
    end
  end
end

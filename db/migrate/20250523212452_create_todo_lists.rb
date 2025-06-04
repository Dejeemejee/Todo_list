class CreateTodoLists < ActiveRecord::Migration[8.0]
  def change
    create_table :todo_lists do |t|
      t.string :title, null: false
      t.text :description
      t.date :due_date
      t.boolean :completed

      t.timestamps
    end
  end
end

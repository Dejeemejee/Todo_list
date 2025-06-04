class RemoveCompletedFromTodoLists < ActiveRecord::Migration[8.0]
  def change
    remove_column :todo_lists, :completed, :boolean
  end
end

class AddTodoToCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :category, :reference
  end
end

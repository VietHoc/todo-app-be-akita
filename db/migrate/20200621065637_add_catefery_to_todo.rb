class AddCateferyToTodo < ActiveRecord::Migration[5.2]
  def change
    add_reference :todos, :cateferies, foreign_key: true
  end
end

class CreateCatefories < ActiveRecord::Migration[5.2]
  def change
    create_table :catefories do |t|
      t.string :name

      t.timestamps
    end
  end
end

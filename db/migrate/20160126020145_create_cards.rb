class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :topic
      t.text :definition

      t.timestamps null: false
    end
  end
end

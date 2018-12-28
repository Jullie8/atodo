class CreateUsertodos < ActiveRecord::Migration[5.2]
  def change
    create_table :usertodos do |t|
      t.integer :user_id
      t.integer :todo_id
      t.belongs_to :user, foreign_key: true
      t.belongs_to :todo, foreign_key: true

      t.timestamps
    end
  end
end

class CreateActionSteps < ActiveRecord::Migration[5.0]
  def change
    create_table :action_steps do |t|
      t.string :title
      t.text :description
      t.integer :goal_id

      t.timestamps
    end
  end
end

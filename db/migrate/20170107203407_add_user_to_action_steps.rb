class AddUserToActionSteps < ActiveRecord::Migration[5.0]
  def change
    add_reference :action_steps, :user, foreign_key: true
  end
end

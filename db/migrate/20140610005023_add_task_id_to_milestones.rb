class AddTaskIdToMilestones < ActiveRecord::Migration[5.0]
  def change
    add_column :milestones, :task_id, :integer
    add_index :milestones, :task_id
  end
end

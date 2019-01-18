class AddKanbanMilestoneIdToMilestones < ActiveRecord::Migration[5.0]
  def change
    add_column :milestones, :kanban_milestone_id, :integer
    add_index :milestones, :kanban_milestone_id
  end
end

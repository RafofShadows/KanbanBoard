class AddKanbanIdToKanbanMilestones < ActiveRecord::Migration[5.0]
  def change
    add_column :kanban_milestones, :kanban_id, :integer
    add_index :kanban_milestones, :kanban_id
  end
end

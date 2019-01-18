class CreateMilestones < ActiveRecord::Migration[5.0]
  def change
    create_table :milestones do |t|
      t.string :milestone_key
      t.string :milestone_value

      t.timestamps
    end
  end
end

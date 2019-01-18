class CreateTaggings < ActiveRecord::Migration[5.0]
  def change
    create_table :taggings do |t|
        t.belongs_to :task, index: true
        t.belongs_to :kanban, index: true
    end
  end
end

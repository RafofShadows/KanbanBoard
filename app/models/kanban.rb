class Kanban < ActiveRecord::Base

    belongs_to :user
    # default_scope -> { order('created_at DESC') }
    validates :name, presence: true, length: {in: 2..30}
    validates :user_id, presence: true

    has_many :taggings, dependent: :destroy
    has_many :tasks, through: :taggings, dependent: :destroy

    has_many :kanban_milestones, dependent: :destroy
    accepts_nested_attributes_for :kanban_milestones, allow_destroy: true

end

class Todo < ApplicationRecord
    has_many :tasks
    has_many :usertodos
    has_many :users, through: :usertodos
    validates :title, presence: true
end

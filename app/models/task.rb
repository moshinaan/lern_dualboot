# frozen_string_literal: true

class Task < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :assignee, class_name: 'User', optional: true

  validates :name, presence: true
  validates :description, presence: true
  validates :author, presence: true
  validates :description, length: { maximum: 500 }

  state_machine :state, initial: :new_task do
  	event :archived do
      transition [:new_task, :released] => :archived
    end
    event :development do
      transition [:new_task, :in_qa, :in_code_review] => :in_development
    end
    event :qa do
      transition :in_development => :in_qa
    end
    event :code_review do
      transition :in_qa => :in_code_review
    end
    event :task_ready_for_release do
      transition :in_code_review => :ready_for_release
    end
    event :task_released do
      transition :ready_for_release => :released
    end
  end
end

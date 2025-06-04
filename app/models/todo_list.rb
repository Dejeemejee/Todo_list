class TodoList < ApplicationRecord
   validates :title, presence: true
   validates :description, presence: true, length: { minimum: 10 }
   validates :due_date, presence: true
end

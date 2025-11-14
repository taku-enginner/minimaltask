class Plan < ApplicationRecord
  enum :status, { plan: 0, done: 1 }
end

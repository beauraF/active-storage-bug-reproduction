class MessagesRecord < ApplicationRecord
  self.abstract_class = true

  connects_to database: { writing: :messages }
end

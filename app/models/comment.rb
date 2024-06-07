class Comment < ApplicationRecord
  belongs_to :chase
  belongs_to :user
end

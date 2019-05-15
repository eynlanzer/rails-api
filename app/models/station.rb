class Station < ApplicationRecord
  belongs_to :premise
  belongs_to :user
end

class Vote < ApplicationRecord
  belongs_to :category
  belongs_to :tip
end

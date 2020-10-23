class Memo < ApplicationRecord
  validates :item, presence: true
  validates :text, presence: true
end

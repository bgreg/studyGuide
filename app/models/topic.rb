class Topic < ApplicationRecord
  has_many :examples, dependent: :destroy
  has_many :links, dependent: :destroy
end

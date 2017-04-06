class Player < ActiveRecord::Base

  validates :name, presence: true
  validates :age, presence: true
  validates :position, presence: true
  validates :squad_no, presence: true
  validates :quote, length: { minimum: 10, maximum: 200 }
end

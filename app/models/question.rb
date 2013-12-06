class Question < ActiveRecord::Base
  belongs_to :user

  validates :body, presence: true, length: {in: 5..255}
  validates :solved, inclusion: {in: [true, false]}
end
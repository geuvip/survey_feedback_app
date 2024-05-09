class Question < ApplicationRecord
  enum question_type: [:choice, :text]
  has_many :options, dependent: :destroy
  belongs_to :survey
end

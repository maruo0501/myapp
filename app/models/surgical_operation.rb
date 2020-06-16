class SurgicalOperation < ApplicationRecord
  belongs_to :user
  has_many :stocks, dependent: :destroy
  validates :title, :content, :medical_department, presence: true
  mount_uploader :image, ImageUploader
end

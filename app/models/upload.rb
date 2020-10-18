class Upload < ApplicationRecord
  has_many :translation_files, dependent: :destroy
  has_one_attached :file
  belongs_to :project
end

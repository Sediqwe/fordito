class Upload < ApplicationRecord
  has_many :translation_files

  has_one_attached :file
  belongs_to :project
end

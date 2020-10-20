class TranslationFile < ApplicationRecord
  belongs_to :upload
  belongs_to :project
  has_many :translation_file_contents, dependent: :destroy
end

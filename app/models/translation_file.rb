class TranslationFile < ApplicationRecord
  belongs_to :upload
  has_many :translation_file_contents, dependent: :destroy
end

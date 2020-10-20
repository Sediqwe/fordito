class TranslationFileContent < ApplicationRecord
  belongs_to :translation_file
  has_many :trans
end

class Project < ApplicationRecord
    has_many :translation_files
    has_many :uploads
    
end

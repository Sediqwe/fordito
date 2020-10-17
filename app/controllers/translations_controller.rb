class TranslationsController < ApplicationController

  def index; end
  def edit
    @translation = TranslationFile.find(params[:id])
    @contents = @translation.translation_file_contents
  end
end

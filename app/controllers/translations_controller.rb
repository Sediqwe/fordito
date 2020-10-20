class TranslationsController < ApplicationController

  def index
  
  end

  def edit
    @num = params[:page]
    @translation = TranslationFile.find(params[:id])
    @translation_file_content = Tran.all
    @q = TranslationFileContent.ransack(params[:q])
    @contents = @q.result.where(translation_file_id: params[:id]).order(:id).page(params[:page])
  end
end

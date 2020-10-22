class TransController < ApplicationController
    def update; end

    def create
        permitted_params = trans_params

        translation_file_content = TranslationFileContent.find(permitted_params[:content_id])

        @trans = Tran.create(value: permitted_params[:value], translation_file_content: translation_file_content)
        @trans.save

        redirect_to edit_translation_path(id: translation_file_content.translation_file_id)
    end


    private

    def trans_params
        params.require(:translation_file_content).permit(:value, :content_id, :translation_id)
    end
end

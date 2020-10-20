class TransController < ApplicationController
    def update
    end
    def create
        @trans = Tran.create(trans_params)
        @trans.save
        redirect_to edit_translation_path(1)
    end
    private
    def trans_params
        params.require(:trans).permit(:new_value)
    end

end

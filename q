
[1mFrom:[0m /home/phc/projects/fordito/app/controllers/trans_controller.rb:13 TransController#create:

     [1;34m4[0m: [32mdef[0m [1;34mcreate[0m
     [1;34m5[0m:     permitted_params = trans_params
     [1;34m6[0m: 
     [1;34m7[0m:     translation_file_content = [1;34;4mTranslationFileContent[0m.find(permitted_params[[33m:content_id[0m])
     [1;34m8[0m: 
     [1;34m9[0m:     @trans = [1;34;4mTran[0m.create([35mvalue[0m: permitted_params[[33m:value[0m], [35mtranslation_file_contents_id[0m: translation_file_content)
    [1;34m10[0m:     @trans.save
    [1;34m11[0m:     binding.pry
    [1;34m12[0m:     [1;34m#redirect_to edit_translation_path(id: params[:translation_id])[0m
 => [1;34m13[0m: [32mend[0m


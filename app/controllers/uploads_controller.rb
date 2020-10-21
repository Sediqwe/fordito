class UploadsController < ApplicationController
  before_action :set_upload, only: [:show, :edit, :update, :destroy]

  # GET /uploads
  # GET /uploads.json
  def index
    @uploads = Upload.where(project_id: @page) if params[:id].present?
    @uploads = Upload.all

    @projects = Project.all
    
    
  end

  # GET /uploads/1
  # GET /uploads/1.json
  def show
    @translation_files = @upload.translation_files.paginate(page: params[:page], per_page: 30)
  end

  # GET /uploads/new
  def new
    @upload = Upload.new
  end

  # GET /uploads/1/edit
  def edit
  end

  # POST /uploads
  # POST /uploads.json
  def create

    @upload = Upload.new(upload_params)
    @upload.save
    if upload_params[:file].content_type == 'application/zip'
      Zip::File.open(upload_params[:file].tempfile) do |zip_file|
        zip_file.each do |entry|
          @translation_file = TranslationFile.new(upload_id: @upload.id, file_name: entry.name, file_type: 'text/plain')
          @translation_file.save
          translation_content = []

          file_content = entry.get_input_stream.read
          enum_content = file_content.each_line
          enum_content.each do |content_line|
            key, value = content_line.split('=')
            next if key == "\r\n"
            translation_content << {translation_file_id: @translation_file.id, key: key, value: value}
          end
          @translation_file_content = TranslationFileContent.insert_all(translation_content)
        end
      end
    end

    redirect_to @upload, notice: 'Upload was successfully created.'
  end

  # PATCH/PUT /uploads/1
  # PATCH/PUT /uploads/1.json
  def update
    respond_to do |format|
      if @upload.update(upload_params)
        format.html { redirect_to @upload, notice: 'Upload was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /uploads/1
  # DELETE /uploads/1.json
  def destroy
    @upload.destroy
    respond_to do |format|
      format.html { redirect_to uploads_url, notice: 'Upload was successfully destroyed.' }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_upload
    @upload = Upload.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def upload_params
    params.require(:upload).permit(:file_name, :file_ext, :file_size, :game_version, :project_id, :translation, :file)
  end

end

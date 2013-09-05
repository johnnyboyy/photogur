class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy, :upvote]
  http_basic_authenticate_with name: "john", password: "secret", except: [:index, :show]


  # GET /pictures
  # GET /pictures.json
  def index
    @pictures = Picture.all
  end

  # GET /pictures/1
  # GET /pictures/1.json
  def show
  end

  # GET /pictures/new
  def new
    @picture = Picture.new
  end

  # GET /pictures/1/edit
  def edit
  end


  def upvote
    picture = Picture.find(params[:id])
    picture.rating += 1
    picture.save
    redirect_to picture
  end

  # POST /pictures
  # POST /pictures.json
  def create
    @picture = Picture.new(picture_params)

    @picture.user_id = current_user.id
    
    respond_to do |format|
      if @picture.save
        format.html { redirect_to pictures_url, notice: 'Picture was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  # PATCH/PUT /pictures/1
  # PATCH/PUT /pictures/1.json
  def update
    respond_to do |format|
      if @picture.update(picture_params)
        format.html { redirect_to @picture, notice: 'Picture was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  # DELETE /pictures/1
  # DELETE /pictures/1.json
  def destroy
    @picture.destroy
    respond_to do |format|
      format.html { redirect_to pictures_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picture
      @picture = Picture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def picture_params
      params.require(:picture).permit(:title, :artist, :URL)
    end
end

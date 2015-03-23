class SedsController < ApplicationController
  before_action :set_sed, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show] 
  before_action :correct_user, only: [:show, :edit, :update, :destroy]

  # GET /seds
  # GET /seds.json
  def index
    @seds = Sed.all
  end

  # GET /seds/1
  # GET /seds/1.json
  def show
    @sed = Sed.find(params[:id])
    @plays = @sed.plays
  end

  # GET /seds/new
  def new
    @sed = current_user.seds.build 
  end

  # GET /seds/1/edit
  def edit
  end

  # POST /seds
  # POST /seds.json
  def create
    @sed = current_user.seds.build(sed_params)

    respond_to do |format|
      if @sed.save
        format.html { redirect_to @sed, notice: 'Sed was successfully created.' }
        format.json { render :show, status: :created, location: @sed }
      else
        format.html { render :new }
        format.json { render json: @sed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seds/1
  # PATCH/PUT /seds/1.json
  def update
    respond_to do |format|
      if @sed.update(sed_params)
        format.html { redirect_to @sed, notice: 'Sed was successfully updated.' }
        format.json { render :show, status: :ok, location: @sed }
      else
        format.html { render :edit }
        format.json { render json: @sed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seds/1
  # DELETE /seds/1.json
  def destroy
    @sed.destroy
    respond_to do |format|
      format.html { redirect_to seds_url, notice: 'Sed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sed
      @sed = Sed.find(params[:id])
    end

    def correct_user
      redirect_to root_path, notice: "Not authorized" if @sed.user != current_user   
    end    

    # Never trust parameters from the scary internet, only allow the white list through.
    def sed_params
      params.require(:sed).permit(:name, :user_id)
    end
end

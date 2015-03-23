class Seds::PlaysController < ApplicationController
  before_action :set_play, only: [:show, :edit, :update, :destroy]

  # GET /plays
  # GET /plays.json
  def index
    @sed = Sed.find(params[:sed_id])
    @plays = Play.all
  end

  # GET /plays/1
  # GET /plays/1.json
  def show
    @sed = Sed.find(params[:sed_id])
    @plays = Play.all
  end

  # GET /plays/new
  def new
    @sed = Sed.find(params[:sed_id])
    @play = Play.new
  end

  # GET /plays/1/edit
  def edit
    @sed = Sed.find(params[:sed_id])
    @play.sed = @sed 
  end

  # POST /plays
  # POST /plays.json
  def create
    @sed = Sed.find(params[:sed_id])
    @play = Play.new(play_params)
    @play.sed = @sed 

    respond_to do |format|
      if @play.save
        format.html { redirect_to @sed, notice: 'Play was successfully added.' }
        format.json { render :show, status: :created, location: @sed }
      else
        format.html { render :new }
        format.json { render json: @sed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plays/1
  # PATCH/PUT /plays/1.json
  def update
    @sed = Sed.find(params[:sed_id])
    @play.sed = @sed 
        
    respond_to do |format|
      if @play.update(play_params)
        format.html { redirect_to @sed, notice: 'Play was successfully updated.' }
        format.json { render :show, status: :ok, location: @play }
      else
        format.html { render :edit }
        format.json { render json: @sed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plays/1
  # DELETE /plays/1.json
  def destroy
    @sed = Sed.find(params[:sed_id])
    @play = Play.find(params[:id])
    title = @play.fullname  
    
    if @play.destroy
      flash[:notice] = "\"#{title}\" was deleted successfully."
      redirect_to @sed
    else
      flash[:error] = "There was an error deleting the play."
      render :show
    end     
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_play
      @play = Play.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def play_params
      params.require(:play).permit(:piece1, :piece2, :piece3, :piece4, :piece5, :piece6, :piece7, :piece8, :piece9, :piece10, :piece11, :piece12, :piece13, :piece14, :piece15, :piece16, :piece17, :piece18, :piece19, :piece20, :piece21, :piece22, :piece23, :piece24, :piece25, :sed_id)
    end
end

class Pnameforms::Piece16sController < ApplicationController
  before_action :set_piece16, only: [:show, :edit, :update, :destroy]

  # GET /piece16s
  # GET /piece16s.json
  def index
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece16s = @pnameform.piece16s
  end

  # GET /piece16s/16
  # GET /piece16s/16.json
  def show
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece16s = Piece16.all    
  end

  # GET /piece16s/new
  def new
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece16 = current_user.piece16s.build
  end

  # GET /piece16s/16/edit
  def edit
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece16.pnameform = @pnameform 
  end

  # POST /piece16s
  # POST /piece16s.json
  def create
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece16 = current_user.piece16s.build(piece16_params)
    @piece16.pnameform = @pnameform 

    respond_to do |format|
      if @piece16.save
        format.html { redirect_to pnameform_piece16s_path(@pnameform), notice: 'Piece16 was successfully created.' }
        format.json { render :show, status: :created, location: @piece16 }
      else
        format.html { render :new }
        format.json { render json: @piece16.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece16s/16
  # PATCH/PUT /piece16s/16.json
  def update
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece16.pnameform = @pnameform 

    respond_to do |format|
      if @piece16.update(piece16_params)
        format.html { redirect_to pnameform_piece16s_path(@pnameform), notice: 'Piece16 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece16 }
      else
        format.html { render :edit }
        format.json { render json: @piece16.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece16s/16
  # DELETE /piece16s/16.json
  def destroy
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece16 = Piece16.find(params[:id])
    title = @piece16.name

    if @piece16.destroy
      flash[:notice] = "\"#{title}\" was deleted successfully."
      redirect_to pnameform_piece16s_path(@pnameform)
    else
      flash[:error] = "There was an error deleting."
      render :show 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece16
      @piece16 = Piece16.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece16_params
      params.require(:piece16).permit(:name, :user_id)
    end
end

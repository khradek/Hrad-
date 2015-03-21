class Pnameforms::Piece11sController < ApplicationController
  before_action :set_piece11, only: [:show, :edit, :update, :destroy]

  # GET /piece11s
  # GET /piece11s.json
  def index
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece11s = @pnameform.piece11s
  end

  # GET /piece11s/11
  # GET /piece11s/11.json
  def show
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece11s = Piece11.all    
  end

  # GET /piece11s/new
  def new
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece11 = Piece11.new 
  end

  # GET /piece11s/11/edit
  def edit
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece11.pnameform = @pnameform 
  end

  # POST /piece11s
  # POST /piece11s.json
  def create
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece11 = Piece11.new(piece11_params)
    @piece11.pnameform = @pnameform 

    respond_to do |format|
      if @piece11.save
        format.html { redirect_to pnameform_piece11s_path(@pnameform), notice: 'Piece11 was successfully created.' }
        format.json { render :show, status: :created, location: @piece11 }
      else
        format.html { render :new }
        format.json { render json: @piece11.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece11s/11
  # PATCH/PUT /piece11s/11.json
  def update
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece11.pnameform = @pnameform 

    respond_to do |format|
      if @piece11.update(piece11_params)
        format.html { redirect_to pnameform_piece11s_path(@pnameform), notice: 'Piece11 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece11 }
      else
        format.html { render :edit }
        format.json { render json: @piece11.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece11s/11
  # DELETE /piece11s/11.json
  def destroy
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece11 = Piece11.find(params[:id])
    title = @piece11.name

    if @piece11.destroy
      flash[:notice] = "\"#{title}\" was deleted successfully."
      redirect_to pnameform_piece11s_path(@pnameform)
    else
      flash[:error] = "There was an error deleting."
      render :show 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece11
      @piece11 = Piece11.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece11_params
      params.require(:piece11).permit(:name, :user_id)
    end
end

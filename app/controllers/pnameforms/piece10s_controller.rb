class Pnameforms::Piece10sController < ApplicationController
  before_action :set_piece10, only: [:show, :edit, :update, :destroy]

  # GET /piece10s
  # GET /piece10s.json
  def index
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece10s = @pnameform.piece10s
  end

  # GET /piece10s/10
  # GET /piece10s/10.json
  def show
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece10s = Piece10.all    
  end

  # GET /piece10s/new
  def new
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece10 = Piece10.new 
  end

  # GET /piece10s/10/edit
  def edit
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece10.pnameform = @pnameform 
  end

  # POST /piece10s
  # POST /piece10s.json
  def create
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece10 = Piece10.new(piece10_params)
    @piece10.pnameform = @pnameform 

    respond_to do |format|
      if @piece10.save
        format.html { redirect_to pnameform_piece10s_path(@pnameform), notice: 'Piece10 was successfully created.' }
        format.json { render :show, status: :created, location: @piece10 }
      else
        format.html { render :new }
        format.json { render json: @piece10.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece10s/10
  # PATCH/PUT /piece10s/10.json
  def update
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece10.pnameform = @pnameform 

    respond_to do |format|
      if @piece10.update(piece10_params)
        format.html { redirect_to pnameform_piece10s_path(@pnameform), notice: 'Piece10 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece10 }
      else
        format.html { render :edit }
        format.json { render json: @piece10.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece10s/10
  # DELETE /piece10s/10.json
  def destroy
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece10 = Piece10.find(params[:id])
    title = @piece10.name

    if @piece10.destroy
      flash[:notice] = "\"#{title}\" was deleted successfully."
      redirect_to pnameform_piece10s_path(@pnameform)
    else
      flash[:error] = "There was an error deleting."
      render :show 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece10
      @piece10 = Piece10.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece10_params
      params.require(:piece10).permit(:name, :user_id)
    end
end

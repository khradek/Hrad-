class Pnameforms::Piece9sController < ApplicationController
  before_action :set_piece9, only: [:show, :edit, :update, :destroy]

  # GET /piece9s
  # GET /piece9s.json
  def index
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece9s = @pnameform.piece9s
  end

  # GET /piece9s/9
  # GET /piece9s/9.json
  def show
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece9s = Piece9.all    
  end

  # GET /piece9s/new
  def new
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece9 = Piece9.new 
  end

  # GET /piece9s/9/edit
  def edit
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece9.pnameform = @pnameform 
  end

  # POST /piece9s
  # POST /piece9s.json
  def create
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece9 = Piece9.new(piece9_params)
    @piece9.pnameform = @pnameform 

    respond_to do |format|
      if @piece9.save
        format.html { redirect_to pnameform_piece9s_path(@pnameform), notice: 'Piece9 was successfully created.' }
        format.json { render :show, status: :created, location: @piece9 }
      else
        format.html { render :new }
        format.json { render json: @piece9.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece9s/9
  # PATCH/PUT /piece9s/9.json
  def update
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece9.pnameform = @pnameform 

    respond_to do |format|
      if @piece9.update(piece9_params)
        format.html { redirect_to pnameform_piece9s_path(@pnameform), notice: 'Piece9 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece9 }
      else
        format.html { render :edit }
        format.json { render json: @piece9.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece9s/9
  # DELETE /piece9s/9.json
  def destroy
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece9 = Piece9.find(params[:id])
    title = @piece9.name

    if @piece9.destroy
      flash[:notice] = "\"#{title}\" was deleted successfully."
      redirect_to pnameform_piece9s_path(@pnameform)
    else
      flash[:error] = "There was an error deleting."
      render :show 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece9
      @piece9 = Piece9.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece9_params
      params.require(:piece9).permit(:name, :user_id)
    end
end

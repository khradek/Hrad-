class Pnameforms::Piece21sController < ApplicationController
  before_action :set_piece21, only: [:show, :edit, :update, :destroy]

  # GET /piece21s
  # GET /piece21s.json
  def index
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece21s = @pnameform.piece21s
  end

  # GET /piece21s/21
  # GET /piece21s/21.json
  def show
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece21s = Piece21.all    
  end

  # GET /piece21s/new
  def new
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece21 = Piece21.new 
  end

  # GET /piece21s/21/edit
  def edit
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece21.pnameform = @pnameform 
  end

  # POST /piece21s
  # POST /piece21s.json
  def create
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece21 = Piece21.new(piece21_params)
    @piece21.pnameform = @pnameform 

    respond_to do |format|
      if @piece21.save
        format.html { redirect_to pnameform_piece21s_path(@pnameform), notice: 'Piece21 was successfully created.' }
        format.json { render :show, status: :created, location: @piece21 }
      else
        format.html { render :new }
        format.json { render json: @piece21.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece21s/21
  # PATCH/PUT /piece21s/21.json
  def update
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece21.pnameform = @pnameform 

    respond_to do |format|
      if @piece21.update(piece21_params)
        format.html { redirect_to pnameform_piece21s_path(@pnameform), notice: 'Piece21 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece21 }
      else
        format.html { render :edit }
        format.json { render json: @piece21.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece21s/21
  # DELETE /piece21s/21.json
  def destroy
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece21 = Piece21.find(params[:id])
    title = @piece21.name

    if @piece21.destroy
      flash[:notice] = "\"#{title}\" was deleted successfully."
      redirect_to pnameform_piece21s_path(@pnameform)
    else
      flash[:error] = "There was an error deleting."
      render :show 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece21
      @piece21 = Piece21.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece21_params
      params.require(:piece21).permit(:name, :user_id)
    end
end

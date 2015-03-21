class Pnameforms::Piece13sController < ApplicationController
  before_action :set_piece13, only: [:show, :edit, :update, :destroy]

  # GET /piece13s
  # GET /piece13s.json
  def index
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece13s = @pnameform.piece13s
  end

  # GET /piece13s/13
  # GET /piece13s/13.json
  def show
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece13s = Piece13.all    
  end

  # GET /piece13s/new
  def new
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece13 = Piece13.new 
  end

  # GET /piece13s/13/edit
  def edit
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece13.pnameform = @pnameform 
  end

  # POST /piece13s
  # POST /piece13s.json
  def create
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece13 = Piece13.new(piece13_params)
    @piece13.pnameform = @pnameform 

    respond_to do |format|
      if @piece13.save
        format.html { redirect_to pnameform_piece13s_path(@pnameform), notice: 'Piece13 was successfully created.' }
        format.json { render :show, status: :created, location: @piece13 }
      else
        format.html { render :new }
        format.json { render json: @piece13.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece13s/13
  # PATCH/PUT /piece13s/13.json
  def update
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece13.pnameform = @pnameform 

    respond_to do |format|
      if @piece13.update(piece13_params)
        format.html { redirect_to pnameform_piece13s_path(@pnameform), notice: 'Piece13 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece13 }
      else
        format.html { render :edit }
        format.json { render json: @piece13.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece13s/13
  # DELETE /piece13s/13.json
  def destroy
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece13 = Piece13.find(params[:id])
    title = @piece13.name

    if @piece13.destroy
      flash[:notice] = "\"#{title}\" was deleted successfully."
      redirect_to pnameform_piece13s_path(@pnameform)
    else
      flash[:error] = "There was an error deleting."
      render :show 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece13
      @piece13 = Piece13.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece13_params
      params.require(:piece13).permit(:name, :user_id)
    end
end

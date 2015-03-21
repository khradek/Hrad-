class Pnameforms::Piece25sController < ApplicationController
  before_action :set_piece25, only: [:show, :edit, :update, :destroy]

  # GET /piece25s
  # GET /piece25s.json
  def index
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece25s = @pnameform.piece25s
  end

  # GET /piece25s/25
  # GET /piece25s/25.json
  def show
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece25s = Piece25.all    
  end

  # GET /piece25s/new
  def new
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece25 = Piece25.new 
  end

  # GET /piece25s/25/edit
  def edit
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece25.pnameform = @pnameform 
  end

  # POST /piece25s
  # POST /piece25s.json
  def create
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece25 = Piece25.new(piece25_params)
    @piece25.pnameform = @pnameform 

    respond_to do |format|
      if @piece25.save
        format.html { redirect_to pnameform_piece25s_path(@pnameform), notice: 'Piece25 was successfully created.' }
        format.json { render :show, status: :created, location: @piece25 }
      else
        format.html { render :new }
        format.json { render json: @piece25.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece25s/25
  # PATCH/PUT /piece25s/25.json
  def update
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece25.pnameform = @pnameform 

    respond_to do |format|
      if @piece25.update(piece25_params)
        format.html { redirect_to pnameform_piece25s_path(@pnameform), notice: 'Piece25 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece25 }
      else
        format.html { render :edit }
        format.json { render json: @piece25.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece25s/25
  # DELETE /piece25s/25.json
  def destroy
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece25 = Piece25.find(params[:id])
    title = @piece25.name

    if @piece25.destroy
      flash[:notice] = "\"#{title}\" was deleted successfully."
      redirect_to pnameform_piece25s_path(@pnameform)
    else
      flash[:error] = "There was an error deleting."
      render :show 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece25
      @piece25 = Piece25.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece25_params
      params.require(:piece25).permit(:name, :user_id)
    end
end

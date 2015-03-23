class Pnameforms::Piece23sController < ApplicationController
  before_action :set_piece23, only: [:show, :edit, :update, :destroy]

  # GET /piece23s
  # GET /piece23s.json
  def index
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece23s = @pnameform.piece23s
  end

  # GET /piece23s/23
  # GET /piece23s/23.json
  def show
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece23s = Piece23.all    
  end

  # GET /piece23s/new
  def new
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece23 = current_user.piece23s.build 
  end

  # GET /piece23s/23/edit
  def edit
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece23.pnameform = @pnameform 
  end

  # POST /piece23s
  # POST /piece23s.json
  def create
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece23 = current_user.piece23s.build(piece23_params)
    @piece23.pnameform = @pnameform 

    respond_to do |format|
      if @piece23.save
        format.html { redirect_to pnameform_piece23s_path(@pnameform), notice: 'Piece23 was successfully created.' }
        format.json { render :show, status: :created, location: @piece23 }
      else
        format.html { render :new }
        format.json { render json: @piece23.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece23s/23
  # PATCH/PUT /piece23s/23.json
  def update
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece23.pnameform = @pnameform 

    respond_to do |format|
      if @piece23.update(piece23_params)
        format.html { redirect_to pnameform_piece23s_path(@pnameform), notice: 'Piece23 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece23 }
      else
        format.html { render :edit }
        format.json { render json: @piece23.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece23s/23
  # DELETE /piece23s/23.json
  def destroy
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece23 = Piece23.find(params[:id])
    title = @piece23.name

    if @piece23.destroy
      flash[:notice] = "\"#{title}\" was deleted successfully."
      redirect_to pnameform_piece23s_path(@pnameform)
    else
      flash[:error] = "There was an error deleting."
      render :show 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece23
      @piece23 = Piece23.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece23_params
      params.require(:piece23).permit(:name, :user_id)
    end
end

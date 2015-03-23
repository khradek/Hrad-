class Pnameforms::Piece1sController < ApplicationController
  before_action :set_piece1, only: [:show, :edit, :update, :destroy]

  # GET /piece1s
  # GET /piece1s.json
  def index
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece1s = @pnameform.piece1s
  end

  # GET /piece1s/1
  # GET /piece1s/1.json
  def show
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece1s = Piece1.all    
  end

  # GET /piece1s/new
  def new
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece1 = current_user.piece1s.build 
  end

  # GET /piece1s/1/edit
  def edit
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece1.pnameform = @pnameform 
  end

  # POST /piece1s
  # POST /piece1s.json
  def create
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece1 = current_user.piece1s.build(piece1_params)
    @piece1.pnameform = @pnameform 

    respond_to do |format|
      if @piece1.save
        format.html { redirect_to pnameform_piece1s_path(@pnameform), notice: 'Piece1 was successfully created.' }
        format.json { render :show, status: :created, location: @piece1 }
      else
        format.html { render :new }
        format.json { render json: @piece1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece1s/1
  # PATCH/PUT /piece1s/1.json
  def update
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece1.pnameform = @pnameform 

    respond_to do |format|
      if @piece1.update(piece1_params)
        format.html { redirect_to pnameform_piece1s_path(@pnameform), notice: 'Piece1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece1 }
      else
        format.html { render :edit }
        format.json { render json: @piece1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece1s/1
  # DELETE /piece1s/1.json
  def destroy
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece1 = Piece1.find(params[:id])
    title = @piece1.name

    if @piece1.destroy
      flash[:notice] = "\"#{title}\" was deleted successfully."
      redirect_to pnameform_piece1s_path(@pnameform)
    else
      flash[:error] = "There was an error deleting."
      render :show 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece1
      @piece1 = Piece1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece1_params
      params.require(:piece1).permit(:name, :user_id)
    end
end

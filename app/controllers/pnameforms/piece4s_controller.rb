class Pnameforms::Piece4sController < ApplicationController
  before_action :set_piece4, only: [:show, :edit, :update, :destroy]

  # GET /piece4s
  # GET /piece4s.json
  def index
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece4s = @pnameform.piece4s
  end

  # GET /piece4s/4
  # GET /piece4s/4.json
  def show
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece4s = Piece4.all    
  end

  # GET /piece4s/new
  def new
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece4 = current_user.piece4s.build
  end

  # GET /piece4s/4/edit
  def edit
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece4.pnameform = @pnameform 
  end

  # POST /piece4s
  # POST /piece4s.json
  def create
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece4 = current_user.piece4s.build(piece4_params)
    @piece4.pnameform = @pnameform 

    respond_to do |format|
      if @piece4.save
        format.html { redirect_to pnameform_piece4s_path(@pnameform), notice: 'Piece4 was successfully created.' }
        format.json { render :show, status: :created, location: @piece4 }
      else
        format.html { render :new }
        format.json { render json: @piece4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece4s/4
  # PATCH/PUT /piece4s/4.json
  def update
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece4.pnameform = @pnameform 

    respond_to do |format|
      if @piece4.update(piece4_params)
        format.html { redirect_to pnameform_piece4s_path(@pnameform), notice: 'Piece4 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece4 }
      else
        format.html { render :edit }
        format.json { render json: @piece4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece4s/4
  # DELETE /piece4s/4.json
  def destroy
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece4 = Piece4.find(params[:id])
    title = @piece4.name

    if @piece4.destroy
      flash[:notice] = "\"#{title}\" was deleted successfully."
      redirect_to pnameform_piece4s_path(@pnameform)
    else
      flash[:error] = "There was an error deleting."
      render :show 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece4
      @piece4 = Piece4.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece4_params
      params.require(:piece4).permit(:name, :user_id)
    end
end

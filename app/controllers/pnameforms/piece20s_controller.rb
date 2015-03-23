class Pnameforms::Piece20sController < ApplicationController
  before_action :set_piece20, only: [:show, :edit, :update, :destroy]

  # GET /piece20s
  # GET /piece20s.json
  def index
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece20s = @pnameform.piece20s
  end

  # GET /piece20s/20
  # GET /piece20s/20.json
  def show
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece20s = Piece20.all    
  end

  # GET /piece20s/new
  def new
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece20 = current_user.piece20s.build 
  end

  # GET /piece20s/20/edit
  def edit
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece20.pnameform = @pnameform 
  end

  # POST /piece20s
  # POST /piece20s.json
  def create
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece20 = current_user.piece20s.build(piece20_params)
    @piece20.pnameform = @pnameform 

    respond_to do |format|
      if @piece20.save
        format.html { redirect_to pnameform_piece20s_path(@pnameform), notice: 'Piece20 was successfully created.' }
        format.json { render :show, status: :created, location: @piece20 }
      else
        format.html { render :new }
        format.json { render json: @piece20.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece20s/20
  # PATCH/PUT /piece20s/20.json
  def update
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece20.pnameform = @pnameform 

    respond_to do |format|
      if @piece20.update(piece20_params)
        format.html { redirect_to pnameform_piece20s_path(@pnameform), notice: 'Piece20 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece20 }
      else
        format.html { render :edit }
        format.json { render json: @piece20.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece20s/20
  # DELETE /piece20s/20.json
  def destroy
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece20 = Piece20.find(params[:id])
    title = @piece20.name

    if @piece20.destroy
      flash[:notice] = "\"#{title}\" was deleted successfully."
      redirect_to pnameform_piece20s_path(@pnameform)
    else
      flash[:error] = "There was an error deleting."
      render :show 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece20
      @piece20 = Piece20.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece20_params
      params.require(:piece20).permit(:name, :user_id)
    end
end

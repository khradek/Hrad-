class PnameformsController < ApplicationController
  before_action :set_pnameform, only: [:show, :edit, :update, :destroy] 
  before_action :authenticate_user!, except: [:index, :show] 
  before_action :correct_user, only: [:show, :edit, :update, :destroy]

  # GET /pnameforms
  # GET /pnameforms.json
  def index
    @pnameforms = Pnameform.all
  end

  # GET /pnameforms/1
  # GET /pnameforms/1.json
  def show
    @pnameform = Pnameform.find(params[:id])
    @piece1s = @pnameform.piece1s   
    @piece2s = @pnameform.piece2s 
    @piece3s = @pnameform.piece3s
    @piece4s = @pnameform.piece4s
    @piece5s = @pnameform.piece5s
    @piece6s = @pnameform.piece6s
    @piece7s = @pnameform.piece7s
    @piece8s = @pnameform.piece8s
    @piece9s = @pnameform.piece9s
    @piece10s = @pnameform.piece10s
    @piece11s = @pnameform.piece11s
    @piece12s = @pnameform.piece12s
    @piece13s = @pnameform.piece13s
    @piece14s = @pnameform.piece14s
    @piece15s = @pnameform.piece15s
    @piece16s = @pnameform.piece16s
    @piece17s = @pnameform.piece17s
    @piece18s = @pnameform.piece18s
    @piece19s = @pnameform.piece19s
    @piece20s = @pnameform.piece20s
    @piece21s = @pnameform.piece21s
    @piece22s = @pnameform.piece22s
    @piece23s = @pnameform.piece23s
    @piece24s = @pnameform.piece24s
    @piece25s = @pnameform.piece25s
  end

  # GET /pnameforms/new
  def new
    @pnameform = current_user.build_pnameform
  end   

  # GET /pnameforms/1/edit
  def edit
  end

  # POST /pnameforms
  # POST /pnameforms.json
  def create
    @pnameform = current_user.build_pnameform(params[:pnameform])

    respond_to do |format|
      if @pnameform.save
        format.html { redirect_to @pnameform, notice: 'Pnameform was successfully created.' }
        format.json { render :show, status: :created, location: @pnameform }
      else
        format.html { render :new }
        format.json { render json: @pnameform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pnameforms/1
  # PATCH/PUT /pnameforms/1.json
  def update
    respond_to do |format|
      if @pnameform.update(pnameform_params)
        format.html { redirect_to @pnameform, notice: 'Pnameform was successfully updated.' }
        format.json { render :show, status: :ok, location: @pnameform }
      else
        format.html { render :edit }
        format.json { render json: @pnameform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pnameforms/1
  # DELETE /pnameforms/1.json
  def destroy
    @pnameform.destroy
    respond_to do |format|
      format.html { redirect_to pnameforms_url, notice: 'Pnameform was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pnameform
      @pnameform = Pnameform.find(params[:id])
    end

    def correct_user
      redirect_to root_path, notice: "Not authorized" if @pnameform.user != current_user   
    end  

    # Never trust parameters from the scary internet, only allow the white list through.
    def pnameform_params
      params.require(:pnameform).permit(:pname1, :pname2, :pname3, :pname4, :pname5, :pname6, :pname7, :pname8, :pname9, :pname10, :pname11, :pname12, :pname13, :pname14, :pname15, :pname16, :pname17, :pname18, :pname19, :pname20, :pname21, :pname22, :pname23, :pname24, :pname25)
    end  
end


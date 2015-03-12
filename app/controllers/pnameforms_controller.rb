class PnameformsController < ApplicationController
  before_action :set_pnameform, only: [:show, :edit, :update, :destroy]

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
  end

  # GET /pnameforms/new
  def new
    @pnameform = Pnameform.new 
  end

  # GET /pnameforms/1/edit
  def edit
  end

  # POST /pnameforms
  # POST /pnameforms.json
  def create
    @pnameform = Pnameform.new(pnameform_params)

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

    # Never trust parameters from the scary internet, only allow the white list through.
    def pnameform_params
      params.require(:pnameform).permit(:pname1, :pname2, :pname3, :pname4, :pname5, :pname6, :pname7, :pname8, :pname9, :pname10)
    end
end

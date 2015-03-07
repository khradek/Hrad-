class Piece9sController < ApplicationController
  before_action :set_piece9, only: [:show, :edit, :update, :destroy]

  # GET /piece9s
  # GET /piece9s.json
  def index
    @piece9s = Piece9.all
  end

  # GET /piece9s/1
  # GET /piece9s/1.json
  def show
  end

  # GET /piece9s/new
  def new
    @piece9 = Piece9.new
  end

  # GET /piece9s/1/edit
  def edit
  end

  # POST /piece9s
  # POST /piece9s.json
  def create
    @piece9 = Piece9.new(piece9_params)

    respond_to do |format|
      if @piece9.save
        format.html { redirect_to @piece9, notice: 'Piece9 was successfully created.' }
        format.json { render :show, status: :created, location: @piece9 }
      else
        format.html { render :new }
        format.json { render json: @piece9.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece9s/1
  # PATCH/PUT /piece9s/1.json
  def update
    respond_to do |format|
      if @piece9.update(piece9_params)
        format.html { redirect_to @piece9, notice: 'Piece9 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece9 }
      else
        format.html { render :edit }
        format.json { render json: @piece9.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece9s/1
  # DELETE /piece9s/1.json
  def destroy
    @piece9.destroy
    respond_to do |format|
      format.html { redirect_to piece9s_url, notice: 'Piece9 was successfully destroyed.' }
      format.json { head :no_content }
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

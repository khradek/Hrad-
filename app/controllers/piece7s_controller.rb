class Piece7sController < ApplicationController
  before_action :set_piece7, only: [:show, :edit, :update, :destroy]

  # GET /piece7s
  # GET /piece7s.json
  def index
    @piece7s = Piece7.all
  end

  # GET /piece7s/1
  # GET /piece7s/1.json
  def show
  end

  # GET /piece7s/new
  def new
    @piece7 = current_user.piece7s.build 
  end

  # GET /piece7s/1/edit
  def edit
  end

  # POST /piece7s
  # POST /piece7s.json
  def create
    @piece7 = current_user.piece7s.build(piece7_params)

    respond_to do |format|
      if @piece7.save
        format.html { redirect_to @piece7, notice: 'Piece7 was successfully created.' }
        format.json { render :show, status: :created, location: @piece7 }
      else
        format.html { render :new }
        format.json { render json: @piece7.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece7s/1
  # PATCH/PUT /piece7s/1.json
  def update
    respond_to do |format|
      if @piece7.update(piece7_params)
        format.html { redirect_to @piece7, notice: 'Piece7 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece7 }
      else
        format.html { render :edit }
        format.json { render json: @piece7.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece7s/1
  # DELETE /piece7s/1.json
  def destroy
    @piece7.destroy
    respond_to do |format|
      format.html { redirect_to piece7s_url, notice: 'Piece7 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece7
      @piece7 = Piece7.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece7_params
      params.require(:piece7).permit(:name, :user_id)
    end
end

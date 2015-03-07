class Piece1sController < ApplicationController
  before_action :set_piece1, only: [:show, :edit, :update, :destroy]

  # GET /piece1s
  # GET /piece1s.json
  def index
    @piece1s = Piece1.all
  end

  # GET /piece1s/1
  # GET /piece1s/1.json
  def show
  end

  # GET /piece1s/new
  def new
    @piece1 = Piece1.new
  end

  # GET /piece1s/1/edit
  def edit
  end

  # POST /piece1s
  # POST /piece1s.json
  def create
    @piece1 = Piece1.new(piece1_params)

    respond_to do |format|
      if @piece1.save
        format.html { redirect_to @piece1, notice: 'Piece1 was successfully created.' }
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
    respond_to do |format|
      if @piece1.update(piece1_params)
        format.html { redirect_to @piece1, notice: 'Piece1 was successfully updated.' }
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
    @piece1.destroy
    respond_to do |format|
      format.html { redirect_to piece1s_url, notice: 'Piece1 was successfully destroyed.' }
      format.json { head :no_content }
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

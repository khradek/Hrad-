class Piece5sController < ApplicationController
  before_action :set_piece5, only: [:show, :edit, :update, :destroy]

  # GET /piece5s
  # GET /piece5s.json
  def index
    @piece5s = Piece5.all
  end

  # GET /piece5s/1
  # GET /piece5s/1.json
  def show
  end

  # GET /piece5s/new
  def new
    @piece5 = current_user.piece5s.build 
  end

  # GET /piece5s/1/edit
  def edit
  end

  # POST /piece5s
  # POST /piece5s.json
  def create
    @piece5 = current_user.piece5s.build(piece5_params)

    respond_to do |format|
      if @piece5.save
        format.html { redirect_to @piece5, notice: 'Piece5 was successfully created.' }
        format.json { render :show, status: :created, location: @piece5 }
      else
        format.html { render :new }
        format.json { render json: @piece5.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece5s/1
  # PATCH/PUT /piece5s/1.json
  def update
    respond_to do |format|
      if @piece5.update(piece5_params)
        format.html { redirect_to @piece5, notice: 'Piece5 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece5 }
      else
        format.html { render :edit }
        format.json { render json: @piece5.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece5s/1
  # DELETE /piece5s/1.json
  def destroy
    @piece5.destroy
    respond_to do |format|
      format.html { redirect_to piece5s_url, notice: 'Piece5 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece5
      @piece5 = Piece5.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece5_params
      params.require(:piece5).permit(:name, :user_id)
    end
end

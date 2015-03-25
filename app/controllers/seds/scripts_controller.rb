class Seds::ScriptsController < ApplicationController
  before_action :set_script, only: [:show, :edit, :update, :destroy]

  # GET /scripts
  # GET /scripts.json
  def index
    @sed = Sed.find(params[:sed_id])
    @scripts = Script.all
  end

  # GET /scripts/1
  # GET /scripts/1.json
  def show
    @sed = Sed.find(params[:sed_id])
    @scripts = Script.all
  end

  # GET /scripts/new
  def new
    @sed = Sed.find(params[:sed_id])
    @script = Script.new
  end

  # GET /scripts/1/edit
  def edit
    @sed = Sed.find(params[:sed_id])
  end

  # POST /scripts
  # POST /scripts.json
  def create
    @sed = Sed.find(params[:sed_id])
    @script = Script.new(script_params)
    @script.sed = @sed

    respond_to do |format|
      if @script.save
        format.html { redirect_to @sed, notice: 'Script was successfully created.' }
        format.json { render :show, status: :created, location: @script }
      else
        format.html { render :new }
        format.json { render json: @script.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scripts/1
  # PATCH/PUT /scripts/1.json
  def update
    @sed = Sed.find(params[:sed_id])
    @script.sed = @sed


    respond_to do |format|
      if @script.update(script_params)
        format.html { redirect_to @sed, notice: 'Script was successfully updated.' }
        format.json { render :show, status: :ok, location: @script }
      else
        format.html { render :edit }
        format.json { render json: @sed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scripts/1
  # DELETE /scripts/1.json
  def destroy
    @sed = Sed.find(params[:sed_id])
    @script = Script.find(params[:id])
    title = @script.name   
    
    if @script.destroy
      flash[:notice] = "\"#{title}\" was deleted successfully."
      redirect_to @sed
    else
      flash[:error] = "There was an error deleting the script."
      render :show
    end     
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_script
      @script = Script.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def script_params
      params.require(:script).permit(:name, :play1, :play2, :play3, :play4, :play5, :play6, :play7, :play8, :play9, :play10, :play11, :play12, :play13, :play14, :play15, :play16, :play17, :play18, :play19, :play20, :play21, :play22, :play23, :play24, :play25, :play26, :play27, :play28, :play29, :play30, :play31, :play32, :play33, :play34, :play35, :play36, :play37, :play38, :play39, :play40, :play41, :play42, :play43, :play44, :play45, :play46, :play47, :play48, :play49, :play50, :play51, :play52, :play53, :play54, :play55, :play56, :play57, :play58, :play59, :play60, :play61, :play62, :play63, :play64, :play65, :play66, :play67, :play68, :play69, :play70, :play71, :play72, :play73, :play74, :play75, :play76, :play77, :play78, :play79, :play80, :play81, :play82, :play83, :play84, :play85, :play86, :play87, :play88, :play89, :play90, :play91, :play92, :play93, :play94, :play95, :play96, :play97, :play98, :play99, :play100, :hash1, :hash2, :hash3, :hash4, :hash5, :hash6, :hash7, :hash8, :hash9, :hash10, :hash11, :hash12, :hash13, :hash14, :hash15, :hash16, :hash17, :hash18, :hash19, :hash20, :hash21, :hash22, :hash23, :hash24, :hash25, :hash26, :hash27, :hash28, :hash29, :hash30, :hash31, :hash32, :hash33, :hash34, :hash35, :hash36, :hash37, :hash38, :hash39, :hash40, :hash41, :hash42, :hash43, :hash44, :hash45, :hash46, :hash47, :hash48, :hash49, :hash50, :hash51, :hash52, :hash53, :hash54, :hash55, :hash56, :hash57, :hash58, :hash59, :hash60, :hash61, :hash62, :hash63, :hash64, :hash65, :hash66, :hash67, :hash68, :hash69, :hash70, :hash71, :hash72, :hash73, :hash74, :hash75, :hash76, :hash77, :hash78, :hash79, :hash80, :hash81, :hash82, :hash83, :hash84, :hash85, :hash86, :hash87, :hash88, :hash89, :hash90, :hash91, :hash92, :hash93, :hash94, :hash95, :hash96, :hash97, :hash98, :hash99, :hash100, :down1, :down2, :down3, :down4, :down5, :down6, :down7, :down8, :down9, :down10, :down11, :down12, :down13, :down14, :down15, :down16, :down17, :down18, :down19, :down20, :down21, :down22, :down23, :down24, :down25, :down26, :down27, :down28, :down29, :down30, :down31, :down32, :down33, :down34, :down35, :down36, :down37, :down38, :down39, :down40, :down41, :down42, :down43, :down44, :down45, :down46, :down47, :down48, :down49, :down50, :down51, :down52, :down53, :down54, :down55, :down56, :down57, :down58, :down59, :down60, :down61, :down62, :down63, :down64, :down65, :down66, :down67, :down68, :down69, :down70, :down71, :down72, :down73, :down74, :down75, :down76, :down77, :down78, :down79, :down80, :down81, :down82, :down83, :down84, :down85, :down86, :down87, :down88, :down89, :down90, :down91, :down92, :down93, :down94, :down95, :down96, :down97, :down98, :down99, :down100, :distance1, :distance2, :distance3, :distance4, :distance5, :distance6, :distance7, :distance8, :distance9, :distance10, :distance11, :distance12, :distance13, :distance14, :distance15, :distance16, :distance17, :distance18, :distance19, :distance20, :distance21, :distance22, :distance23, :distance24, :distance25, :distance26, :distance27, :distance28, :distance29, :distance30, :distance31, :distance32, :distance33, :distance34, :distance35, :distance36, :distance37, :distance38, :distance39, :distance40, :distance41, :distance42, :distance43, :distance44, :distance45, :distance46, :distance47, :distance48, :distance49, :distance50, :distance51, :distance52, :distance53, :distance54, :distance55, :distance56, :distance57, :distance58, :distance59, :distance60, :distance61, :distance62, :distance63, :distance64, :distance65, :distance66, :distance67, :distance68, :distance69, :distance70, :distance71, :distance72, :distance73, :distance74, :distance75, :distance76, :distance77, :distance78, :distance79, :distance80, :distance81, :distance82, :distance83, :distance84, :distance85, :distance86, :distance87, :distance88, :distance89, :distance90, :distance91, :distance92, :distance93, :distance94, :distance95, :distance96, :distance97, :distance98, :distance99, :distance100, :defense1, :defense2, :defense3, :defense4, :defense5, :defense6, :defense7, :defense8, :defense9, :defense10, :defense11, :defense12, :defense13, :defense14, :defense15, :defense16, :defense17, :defense18, :defense19, :defense20, :defense21, :defense22, :defense23, :defense24, :defense25, :defense26, :defense27, :defense28, :defense29, :defense30, :defense31, :defense32, :defense33, :defense34, :defense35, :defense36, :defense37, :defense38, :defense39, :defense40, :defense41, :defense42, :defense43, :defense44, :defense45, :defense46, :defense47, :defense48, :defense49, :defense50, :defense51, :defense52, :defense53, :defense54, :defense55, :defense56, :defense57, :defense58, :defense59, :defense60, :defense61, :defense62, :defense63, :defense64, :defense65, :defense66, :defense67, :defense68, :defense69, :defense70, :defense71, :defense72, :defense73, :defense74, :defense75, :defense76, :defense77, :defense78, :defense79, :defense80, :defense81, :defense82, :defense83, :defense84, :defense85, :defense86, :defense87, :defense88, :defense89, :defense90, :defense91, :defense92, :defense93, :defense94, :defense95, :defense96, :defense97, :defense98, :defense99, :defense100, :situation1, :situation2, :situation3, :situation4, :sed_id)
    end
end

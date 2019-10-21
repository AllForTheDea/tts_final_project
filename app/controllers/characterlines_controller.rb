class CharacterlinesController < ApplicationController
  before_action :set_characterline, only: [:show, :edit, :update, :destroy]

  # GET /characterlines
  # GET /characterlines.json
  def index
    @characterlines = Characterline.all
  end

  # GET /characterlines/1
  # GET /characterlines/1.json
  def show
  end

  # GET /characterlines/new
  def new
    @characterline = Characterline.new
  end

  # GET /characterlines/1/edit
  def edit
  end

  # POST /characterlines
  # POST /characterlines.json
  def create
    @characterline = Characterline.new(characterline_params)

    respond_to do |format|
      if @characterline.save
        format.html { redirect_to project_path(id: @characterline.project_id), notice: 'Characterline was successfully created.' }
        format.json { render :show, status: :created, location: @characterline }
      else
        format.html { render :new }
        format.json { render json: @characterline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /characterlines/1
  # PATCH/PUT /characterlines/1.json
  def update
    respond_to do |format|
      if @characterline.update(characterline_params)
        format.html { redirect_to @characterline, notice: 'Characterline was successfully updated.' }
        format.json { render :show, status: :ok, location: @characterline }
      else
        format.html { render :edit }
        format.json { render json: @characterline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /characterlines/1
  # DELETE /characterlines/1.json
  def destroy
    @characterline.destroy
    respond_to do |format|
      format.html { redirect_to characterlines_url, notice: 'Characterline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_characterline
      @characterline = Characterline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def characterline_params
      params.require(:characterline).permit(:character, :line, :project_id)
    end
end

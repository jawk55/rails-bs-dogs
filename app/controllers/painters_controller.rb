class PaintersController < ApplicationController
  before_action :set_painter, only: %i[ show edit update destroy ]

  # GET /painters or /painters.json
  def index
    @painters = Painter.all
  end

  # GET /painters/1 or /painters/1.json
  def show

  end

  # GET /painters/new
  def new
    @painter = Painter.new
  end

  # GET /painters/1/edit
  def edit
  end

  # POST /painters or /painters.json
  def create
    @painter = Painter.new(painter_params)
    @painter.save
    redirect_to action: :index, notice: "Pintor creado."



    # respond_to do |format|
    #   if @painter.save
    #     format.html { redirect_to painter_url(@painter), notice: "Pintor creado." }
    #     format.json { render :show, status: :created, location: @painter }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @painter.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /painters/1 or /painters/1.json
  def update
    respond_to do |format|
      if @painter.update(painter_params)
        format.html { redirect_to painter_url(@painter), notice: "Painter was successfully updated." }
        format.json { render :show, status: :ok, location: @painter }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @painter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /painters/1 or /painters/1.json
  def destroy
    @painter.destroy

    respond_to do |format|
      format.html { redirect_to painters_url, notice: "Painter was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_painter
      @painter = Painter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def painter_params
      params.require(:painter).permit(:name, pictures_attributes: [:title, :price])
    end
end

class PicturesController < ApplicationController
  #needed for new pictures
  before_action :definir_nueva_pintura, only: %i[new nuevo_select nuevo_radio]

  # GET /pictures or /pictures.json
  def index
    painter_id = params[:id_painter]
    puts params
    # @pictures = Picture.all
    @pictures = Picture.where(painter_id: painter_id)

  end

  def listar
    @pictures = Picture.all
  end
  def nuevo_radio
  end

  def nuevo_select
  end

  # GET /pictures/1 or /pictures/1.json
  def show
  end

  # GET /pictures/new
  def new
  end

  # GET /pictures/1/edit
  def edit
  end

  # POST /pictures or /pictures.json
  def create
    @picture = Picture.new(picture_params)
    @picture.save
    redirect_to action: :listar, notice: "Pintura #{@picture.title}, creada para #{@pintura}"
    # respond_to do |format|
    #   if @picture.save
    #     format.html { redirect_to picture_url(@picture), notice: "Picture was successfully created." }
    #     format.json { render :show, status: :created, location: @picture }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @picture.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /pictures/1 or /pictures/1.json
  def update
    respond_to do |format|
      if @picture.update(picture_params)
        format.html { redirect_to picture_url(@picture), notice: "Picture was successfully updated." }
        format.json { render :show, status: :ok, location: @picture }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pictures/1 or /pictures/1.json
  def destroy
    @picture.destroy

    respond_to do |format|
      format.html { redirect_to pictures_url, notice: "Picture was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picture
      @picture = Picture.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def picture_params
      params.require(:picture).permit(:title, :price, :painter_id)
    end

    def definir_nueva_pintura
      @picture = Picture.new
      @painters = Painter.all
    end
end

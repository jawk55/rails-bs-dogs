class PaintersController < ApplicationController
  def index
    @painters = Painter.where(id: 3)
    @painters = Painter.find_by_sql("SELECT * FROM painters Order by painters.created_at /*ASC*/ DESC")
    # @painters = Painter.find_by_sql("SELECT * FROM painters")
    # @painters = Painter.find_by_id() ?
    #  
  end

  def new
    @painter = Painter.new painter_params_for_create
    # @painter.pictures.build
  end

  def create
    @painter = Painter.new(painter_params)
    puts 1+111
    binding.break
    @painter.save
    redirect_to({ :action => "index" }, {:notice => "The painter: #{@painter.name} was created"})
  end

  private
  def painter_params
    params.require(:painter).permit(:name, pictures_attributes: [:title, :price])
  end

  def painter_params_for_create
    params
      .permit(:name ,
              #one to one association singular note singular and not adresses
              #address_attributes: [:street, :number], # permit one-to-one fields
              # permit one-to-many fields
              pictures_attributes: [:id, :title, :price, :_destroy]
      )
  end

end

# class PaintersController < ApplicationController
#   before_action :authenticate_user!
#   before_action :set_painter, only: %i[ show edit update destroy ]
#
#   # GET /painters or /painters.json
#   def index
#     @painters = Painter.all
#   end
#
#   # GET /painters/1 or /painters/1.json
#   def show
#
#   end
#
#   # GET /painters/new
#   def new
#     @painter = Painter.new
#     # @painter.pictures.build
#   end
#
#   # GET /painters/1/edit
#   def edit
#   end
#
#   # POST /painters or /painters.json
#   def create
#     @painter = Painter.new(painter_params)
#     @painter.save
#     # @painter.picture.create(title: params[:picture][:title], price: params[:picture][:price])
#     # puts @painter.picture
#     # binding.break #debug
#     # redirect_to action: :index, notice: "Pintor creado."
#
#     respond_to do |format|
#       if @painter.save
#         format.html { redirect_to painter_url(@painter), notice: "Pintor creado." }
#         format.json { render :show, status: :created, location: @painter }
#       else
#         format.html { render :new, status: :unprocessable_entity }
#         format.json { render json: @painter.errors, status: :unprocessable_entity }
#       end
#     end
#   end
#
#   # PATCH/PUT /painters/1 or /painters/1.json
#   def update
#     respond_to do |format|
#       if @painter.update(painter_params)
#         format.html { redirect_to painter_url(@painter), notice: "Painter was successfully updated." }
#         format.json { render :show, status: :ok, location: @painter }
#       else
#         format.html { render :edit, status: :unprocessable_entity }
#         format.json { render json: @painter.errors, status: :unprocessable_entity }
#       end
#     end
#   end
#
#   # DELETE /painters/1 or /painters/1.json
#   def destroy
#     @painter.destroy
#
#     respond_to do |format|
#       format.html { redirect_to painters_url, notice: "Painter was successfully destroyed." }
#       format.json { head :no_content }
#     end
#   end
#
#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_painter
#       @painter = Painter.find(params[:id])
#     end
#
#     # Only allow a list of trusted parameters through.
#     def painter_params
#       params.require(:painter).permit(:name, pictures_attributes: [:title, :price])
#     end
# end

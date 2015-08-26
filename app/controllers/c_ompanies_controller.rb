class COmpaniesController < ApplicationController
  before_action :set_c_ompany, only: [:show, :edit, :update, :destroy]

  # GET /c_ompanies
  # GET /c_ompanies.json
  def index
    @c_ompanies = COmpany.all
  end

  # GET /c_ompanies/1
  # GET /c_ompanies/1.json
  def show
  end

  # GET /c_ompanies/new
  def new
    @c_ompany = COmpany.new
  end

  # GET /c_ompanies/1/edit
  def edit
  end

  # POST /c_ompanies
  # POST /c_ompanies.json
  def create
    @c_ompany = COmpany.new(c_ompany_params)

    respond_to do |format|
      if @c_ompany.save
        format.html { redirect_to @c_ompany, notice: 'C ompany was successfully created.' }
        format.json { render :show, status: :created, location: @c_ompany }
      else
        format.html { render :new }
        format.json { render json: @c_ompany.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /c_ompanies/1
  # PATCH/PUT /c_ompanies/1.json
  def update
    respond_to do |format|
      if @c_ompany.update(c_ompany_params)
        format.html { redirect_to @c_ompany, notice: 'C ompany was successfully updated.' }
        format.json { render :show, status: :ok, location: @c_ompany }
      else
        format.html { render :edit }
        format.json { render json: @c_ompany.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_ompanies/1
  # DELETE /c_ompanies/1.json
  def destroy
    @c_ompany.destroy
    respond_to do |format|
      format.html { redirect_to c_ompanies_url, notice: 'C ompany was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_ompany
      @c_ompany = COmpany.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def c_ompany_params
      params.require(:c_ompany).permit(:name)
    end
end

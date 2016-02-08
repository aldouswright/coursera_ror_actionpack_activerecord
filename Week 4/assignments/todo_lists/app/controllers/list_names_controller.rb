class ListNamesController < ApplicationController
  before_action :set_list_name, only: [:show, :edit, :update, :destroy]

  # GET /list_names
  # GET /list_names.json
  def index
    @list_names = ListName.all
  end

  # GET /list_names/1
  # GET /list_names/1.json
  def show
  end

  # GET /list_names/new
  def new
    @list_name = ListName.new
  end

  # GET /list_names/1/edit
  def edit
  end

  # POST /list_names
  # POST /list_names.json
  def create
    @list_name = ListName.new(list_name_params)

    respond_to do |format|
      if @list_name.save
        format.html { redirect_to @list_name, notice: 'List name was successfully created.' }
        format.json { render :show, status: :created, location: @list_name }
      else
        format.html { render :new }
        format.json { render json: @list_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /list_names/1
  # PATCH/PUT /list_names/1.json
  def update
    respond_to do |format|
      if @list_name.update(list_name_params)
        format.html { redirect_to @list_name, notice: 'List name was successfully updated.' }
        format.json { render :show, status: :ok, location: @list_name }
      else
        format.html { render :edit }
        format.json { render json: @list_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_names/1
  # DELETE /list_names/1.json
  def destroy
    @list_name.destroy
    respond_to do |format|
      format.html { redirect_to list_names_url, notice: 'List name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list_name
      @list_name = ListName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_name_params
      params.require(:list_name).permit(:list_due_date)
    end
end

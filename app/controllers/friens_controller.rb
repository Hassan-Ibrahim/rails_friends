class FriensController < ApplicationController
  before_action :set_frien, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]
  # GET /friens or /friens.json
  def index
    @friens = Frien.all
  end

  # GET /friens/1 or /friens/1.json
  def show
  end 

  # GET /friens/new
  def new
    #@frien = Frien.new
    @frien = current_user.friens.build
  end

  # GET /friens/1/edit
  def edit
  end

  # POST /friens or /friens.json
  def create
    #@frien = Frien.new(frien_params)
    @frien = current_user.friens.build(frien_params)

    respond_to do |format|
      if @frien.save
        format.html { redirect_to @frien, notice: "Frien was successfully created." }
        format.json { render :show, status: :created, location: @frien }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @frien.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /friens/1 or /friens/1.json
  def update
    respond_to do |format|
      if @frien.update(frien_params)
        format.html { redirect_to @frien, notice: "Frien was successfully updated." }
        format.json { render :show, status: :ok, location: @frien }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @frien.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friens/1 or /friens/1.json
  def destroy
    @frien.destroy
    respond_to do |format|
      format.html { redirect_to friens_url, notice: "Frien was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @frien = current_user.friens.find_by(id: params[:id])
    redirect_to friens_path, notice:"Not Authorize to Edit this" if @frien.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frien
      @frien = Frien.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def frien_params
      params.require(:frien).permit(:first_name, :last_name, :email, :phone, :twitter, :user_id)
    end
end

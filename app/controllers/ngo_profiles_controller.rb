class NgoProfilesController < ApplicationController
  before_action :set_ngo_profile, only: [:show, :update, :destroy]

  # GET /ngo_profiles
  def index
    @ngo_profiles = NgoProfile.all

    render json: @ngo_profiles
  end

  # GET /ngo_profiles/1
  def show
    render json: @ngo_profile
  end

  # POST /ngo_profiles
  def create
    @ngo_profile = NgoProfile.new(ngo_profile_params)

    if @ngo_profile.save
      render json: @ngo_profile, status: :created, location: @ngo_profile
    else
      render json: @ngo_profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ngo_profiles/1
  def update
    if @ngo_profile.update(ngo_profile_params)
      render json: @ngo_profile
    else
      render json: @ngo_profile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ngo_profiles/1
  def destroy
    @ngo_profile.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ngo_profile
      @ngo_profile = NgoProfile.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ngo_profile_params
      params.require(:ngo_profile).permit(:title)
    end
end

class ClubsController < ApplicationController
  before_action :set_club, only: [:show, :update, :destroy]

  # GET /clubs
  # GET /clubs.json
  def index
    @clubs = Club.all

    render json: @clubs, include: 'players'
  end

  # GET /clubs/1
  # GET /clubs/1.json
  def show
    render json: @club
  end

  # POST /clubs
  # POST /clubs.json
  def create
    @club = Club.new(club_params)

    if @club.save
      render json: @club, status: :created, location: @club
    else
      render json: @club.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /clubs/1
  # PATCH/PUT /clubs/1.json
  def update
    @club = Club.find(params[:id])

    if @club.update(club_params)
      head :no_content
    else
      render json: @club.errors, status: :unprocessable_entity
    end
  end

  # DELETE /clubs/1
  # DELETE /clubs/1.json
  def destroy
    @club.destroy

    head :no_content
  end

  private

    def set_club
      @club = Club.find(params[:id])
    end

    def club_params
      params.require(:club).permit(:name, :country)
    end
end

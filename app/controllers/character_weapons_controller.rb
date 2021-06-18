class CharacterWeaponsController < ApplicationController
  before_action :set_character_weapon, only: %i[ show edit update destroy ]

  # GET /character_weapons or /character_weapons.json
  def index
    @character_weapons = CharacterWeapon.all
  end

  # GET /character_weapons/1 or /character_weapons/1.json
  def show
  end

  # GET /character_weapons/new
  def new
    @character_weapon = CharacterWeapon.new
  end

  # GET /character_weapons/1/edit
  def edit
  end

  # POST /character_weapons or /character_weapons.json
  def create
    @character_weapon = CharacterWeapon.new(character_weapon_params)

    respond_to do |format|
      if @character_weapon.save
        format.html { redirect_to @character_weapon, notice: "Character weapon was successfully created." }
        format.json { render :show, status: :created, location: @character_weapon }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @character_weapon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /character_weapons/1 or /character_weapons/1.json
  def update
    respond_to do |format|
      if @character_weapon.update(character_weapon_params)
        format.html { redirect_to @character_weapon, notice: "Character weapon was successfully updated." }
        format.json { render :show, status: :ok, location: @character_weapon }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @character_weapon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /character_weapons/1 or /character_weapons/1.json
  def destroy
    @character_weapon.destroy
    respond_to do |format|
      format.html { redirect_to character_weapons_url, notice: "Character weapon was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_weapon
      @character_weapon = CharacterWeapon.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def character_weapon_params
      params.fetch(:character_weapon, {})
    end
end

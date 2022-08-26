class Api::PokemonController < ApplicationController
  TYPES =  [
  "fire",
  "electric",
  "normal",
  "ghost",
  "psychic",
  "water",
  "bug",
  "dragon",
  "grass",
  "fighting",
  "ice",
  "flying",
  "poison",
  "ground",
  "rock",
  "steel"
  ].sort.freeze 


  def index
    render json: {}
  end

  def create
    render json: {}
  end

  def show
    render json: {}
  end

  def update
    render json: {}
  end

  def types
    render json: TYPES
  end
end

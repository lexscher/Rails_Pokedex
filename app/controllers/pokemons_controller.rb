class PokemonsController < ApplicationController

    def index
        @pokemons = poke_all
    end

    def show
        @pokemon = poke_one
    end

    def new
        @pokemon = Pokemon.new
    end

    def create
        @pokemon = Pokemon.create(pokemon_params)
        redirect_to pokemon_path(@pokemon)
    end



    private
    # All pokemon
    def poke_all
        Pokemon.all
    end

    # one pokemon
    def poke_one
        poke_all.find(params[:id])
    end

    # Pokemon params for CREATE
    def pokemon_params
        params.require(:pokemon).permit(:name, :weight, :description, :poke_type, :sprite_url)
    end
end

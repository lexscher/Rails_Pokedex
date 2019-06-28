class PokemonsController < ApplicationController

    def index
        @pokemons = poke_all
    end

    def show
        @pokemon = poke_one
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

end

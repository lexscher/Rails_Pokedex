class PokemonsController < ApplicationController

    def index
        if params[:search_term]
            @pokemons = Pokemon.where("name like ?", "%#{params[:search_term]}%")
        else
            @pokemons = poke_all
        end
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

    def edit
        @pokemon = poke_one
    end

    def update
        @pokemon = poke_one
        @pokemon.update(pokemon_params)
        # @pokemon = Pokemon.update(pokemon_params) Keeping this mistake in here to REMEMBER
        # I would update ALL the pokemon instead of the Single pokemon I'm working on 🤦🏿‍♂️
        redirect_to pokemon_path(@pokemon)
    end

    def destroy
        @pokemon = poke_one
        @pokemon.destroy
        redirect_to pokemons_path
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

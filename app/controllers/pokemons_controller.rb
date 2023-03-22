class PokemonsController < ApplicationController
  def index
    national_dex = PokeApi.get(pokedex: 1).pokemon_entries.collect(&:pokemon_species)

    @poke_names = []
    @poke_images = []
    (0..150).each do |poke_number|
      @poke_names << national_dex[poke_number].name.capitalize
      @poke_images << PokeApi.get(pokemon: poke_number + 1).sprites.front_default
    end
  end
end

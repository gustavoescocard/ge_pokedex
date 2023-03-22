class PokemonsController < ApplicationController
  def index
    all_poke_entries = PokeApi.get(pokedex: 1).pokemon_entries
    poke_entries_qtt = all_poke_entries.count

    @pokemons = all_poke_entries.collect(&:pokemon_species)
  end
end

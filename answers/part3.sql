SELECT pokemons.name, types.name
FROM pokemons
INNER JOIN types
ON pokemons.primary_type = types.id;


select pokemons.secondary_type, types.name
from pokemons
inner join types
on pokemons.secondary_type = types.id
where pokemons.name = 'Rufflet';


select pokemons.name
from pokemons
inner join pokemon_trainer
on pokemons.id = pokemon_trainer.pokemon_id
where pokemon_trainer.trainerID = 303;
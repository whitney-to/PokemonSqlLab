--SELECT pokemons.name, trainers.trainername, pokemon_trainer.pokelevel, types.name AS primary_type, types.name AS secondary_type
--FROM pokemons
--INNER JOIN types ON primary_type = types.id
--INNER JOIN pokemon_trainer ON pokemon_trainer.pokemon_id = pokemons.id
--INNER JOIN trainers ON trainers.trainerID = pokemon_trainer.trainerID
--ORDER BY pokemon_trainer.pokelevel DESC;

SELECT pokemons.name, trainers.trainername, pokemon_trainer.pokelevel,
a.name AS primary_type, b.name AS secondary_type
FROM pokemons
INNER JOIN types a ON primary_type = a.id
INNER JOIN types b ON secondary_type = b.id
INNER JOIN pokemon_trainer ON pokemon_trainer.pokemon_id = pokemons.id
INNER JOIN trainers ON trainers.trainerID = pokemon_trainer.trainerID
ORDER BY pokemon_trainer.pokelevel DESC limit 10;
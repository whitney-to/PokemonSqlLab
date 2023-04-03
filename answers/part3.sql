--* What is each pokemon's primary type?
SELECT pokemons.name, types.name
FROM pokemons
INNER JOIN types
ON pokemons.primary_type = types.id;

--* What is Rufflet's secondary type?
select pokemons.secondary_type, types.name
from pokemons
inner join types
on pokemons.secondary_type = types.id
where pokemons.name = 'Rufflet';

--* What are the names of the pokemon that belong to the trainer with trainerID 303?
select pokemons.name
from pokemons
inner join pokemon_trainer
on pokemons.id = pokemon_trainer.pokemon_id
where pokemon_trainer.trainerID = 303;

--* How many pokemon have a secondary type `Poison`
select count(*)
from pokemons
inner join types
on pokemons.secondary_type = types.id
where types.name = 'Poison';

--* What are all the primary types and how many pokemon have that type?
select types.name , count(pokemons.primary_type)
from types left join pokemons
on pokemons.primary_type = types.id
group by types.id;

--* How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
select trainerID, count(pokemon_id) as num
from pokemon_trainer
where pokelevel = 100
group by trainerID
having num > 1;

--* How many pokemon only belong to one trainer and no other?
select pokemon_id, count(trainerID) as num
from pokemon_trainer
group by pokemon_ID
having num = 1;
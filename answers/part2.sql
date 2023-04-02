SELECT name FROM types;

SELECT name FROM pokemons WHERE pokemons.id = 45;

SELECT COUNT(*) FROM pokemons;

SELECT COUNT(*) FROM types;

SELECT COUNT(*) FROM pokemons WHERE pokemons.secondary_type IS NOT NULL;
SELECT COUNT(secondary_type) FROM pokemons;


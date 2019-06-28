# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

all_pokemon = Pokemon.create(
    [
        {
            name: 'Pikachu',
            weight: 60,
            poke_type: 'electric',
            description: 'Pikachu is a mouse pokemon who can discharge electricity from the cheeks.',
            sprite_url: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png'
        },
        {
            name: 'Quilava',
            weight: 190,
            poke_type: 'fire',
            description: 'Quilava is a quadruped Pokémon with a long, slender body.',
            sprite_url: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/156.png'
        },
        {
            name: 'Psyduck',
            weight: 196,
            poke_type: 'water',
            description: 'Psyduck is a yellow Pokémon resembling a duck or bipedal platypus.',
            sprite_url: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/54.png'
        },
        {
            name: 'Machop',
            weight: 195,
            poke_type: 'fighting',
            description: 'Machop is a humanoid, bipedal Pokémon that has gray skin.',
            sprite_url: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/66.png'
        },
        {
            name: 'Mew',
            weight: 40,
            poke_type: 'psychic',
            description: 'Mew is a Mythical Pokémon introduced in Generation I. It is not known to evolve into or from any other Pokémon.',
            sprite_url: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/151.png'
        },
        {
            name: 'Snorlax',
            weight: 4600,
            poke_type: 'normal',
            description: 'Snorlax is often found in mountains and forests. It wakes up only to eat, requiring 900 lbs. (400 kg) of food per day before returning to its slumber.',
            sprite_url: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/143.png'
        },
        {
            name: 'Dragonite',
            weight: 2100,
            poke_type: 'dragon, flying',
            description: 'Dragonite is capable of circling the globe in just 16 hours. It is a kindhearted Pokémon that leads lost and foundering ships in a storm to the safety of land.',
            sprite_url: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/149.png'
        }
    ]
)
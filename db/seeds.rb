# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

races = Race.create([{name: 'Human'}, {name: 'Elf'}, {name: 'Dwarf'}, {name: 'Troll'}])
classifications = Classification.create([{name: 'Warrior'}, {name: 'Ranger'}, {name: 'Sorceror'}, {name: 'Rogue'}, {name: 'Cleric'}])
types = Weapon.types.create([{type: Sword}, {type: Bow}, {type: Staff}, {type: Axe}])
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Merit.destroy_all

beast = Merit.create(name: "Beast", description: "Bravely face danger or challenge in an adventure.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070018745906495498/Beast.png", color: "grey", category: "character")
storyteller = Merit.create(name: "Storyteller", description: "Enrich the adventure with exceptional role-play.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070018748074958888/Storyteller.png", color: "grey", category: "character")
guardian = Merit.create(name: "Guardian", description: "Protect or save a teammate or team from danger in an adventure.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070018746753753180/Guardian.png", color: "grey", category: "character")
caster = Merit.create(name: "Caster", description: "Use your spells or magic exceptionally well to overcome a challenge.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070018746153980016/Caster.png", color: "grey", category: "character")
resourceful = Merit.create(name: "Resourceful", description: "Solve a problem in a clever or unconventional way during an adventure.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070018747852652664/Resourceful.png", color: "grey", category: "character")
commander = Merit.create(name: "Commander", description: "Show leadership skills during a challenging situation.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070018746468532224/Commander.png", color: "grey", category: "character")
quartermaster = Merit.create(name: "Quartermaster", description: "Use your physical weapons exceptionally well during an RPG or Battle Lab.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070018747605209190/Quartermaster.png", color: "grey", category: "character")
veteran = Merit.create(name: "Veteran", description: "Demonstrate expertise or skill with a class or weapon.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070018748364357662/Veteran.png", color: "grey", category: "character")
pathfinder = Merit.create(name: "Pathfinder", description: "Try something new: a new class, a new character, a new game, etc.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070018747319984198/Pathfinder.png", color: "grey", category: "character")
lucky = Merit.create(name: "Lucky", description: "Get a nice dice roll when you really need it!", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070018747017986079/Lucky.png", color: "grey", category: "character")

creator = Merit.create(name: "Creator", description: "Come up with a concept for a game, with some written or creative examples.", image: "", color: "purple", category: "design")
developer = Merit.create(name: "Developer", description: "Create all meteraials and write down all rules for your game. Make it playtest ready!", image: "", color: "purple", category: "design")
refiner = Merit.create(name: "Refiner", description: "Playtest your game, take notes, and make a plan for improving it.", image: "", color: "purple", category: "design")
publisher = Merit.create(name: "Publisher", description: "Using previous playtests, create an improved second edition of your game.", image: "", color: "purple", category: "design")
ring_master = Merit.create(name: "Ring Master", description: "Create a game with an emphasis on fun over rules.", image: "", color: "purple", category: "design")
architect = Merit.create(name: "Architect", description: "Create a game with intricate rules and design.", image: "", color: "purple", category: "design")
artist = Merit.create(name: "Artist", description: "Design something visually distinct: a game, a character, etc.", image: "", color: "purple", category: "design")
scribe = Merit.create(name: "Scribe", description: "Write something original: Immortal Games lore, an RPG story, etc.", image: "", color: "purple", category: "design")
inspector = Merit.create(name: "Inspector", description: "Plytest another student's creation and give feedback", image: "", color: "purple", category: "design")
scholar = Merit.create(name: "Scholar", description: "DM an RPG or run your original game.", image: "", color: "purple", category: "design")
brewer = Merit.create(name: "Brewer", description: "Design a game at home and bring it into the Lab.", image: "", color: "purple", category: "design")
crafter = Merit.create(name: "Crafter", description: "Complete a desgin activity at Brooklyn Game Lab", image: "", color: "purple", category: "design")
enshrined = Merit.create(name: "Enshrined", description: "Your idea was added to a game or the Immortal Games.", image: "", color: "purple", category: "design")
crystallized = Merit.create(name: "Crystallized", description: "Your idea became the official mod or heavily influenced it.", image: "", color: "purple", category: "design")
nominated = Merit.create(name: "Nominated", description: "Your idea influenced the official mod or came close to it.", image: "", color: "purple", category: "design")
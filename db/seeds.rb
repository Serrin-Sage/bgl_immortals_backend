# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Merit.destroy_all
Instructor.destroy_all
User.destroy_all
Student.destroy_all

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

p "Character Merits Created"

creator = Merit.create(name: "Creator", description: "Come up with a concept for a game, with some written or creative examples.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070727498431733931/Creator.png", color: "purple", category: "design")
developer = Merit.create(name: "Developer", description: "Create all meteraials and write down all rules for your game. Make it playtest ready!", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070727499031531550/Developer.png", color: "purple", category: "design")
refiner = Merit.create(name: "Refiner", description: "Playtest your game, take notes, and make a plan for improving it.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070727568329822268/Refiner.png", color: "purple", category: "design")
publisher = Merit.create(name: "Publisher", description: "Using previous playtests, create an improved second edition of your game.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070727568115892325/Publisher.png", color: "purple", category: "design")
ring_master = Merit.create(name: "Ring Master", description: "Create a game with an emphasis on fun over rules.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070727568543723560/RingMaster.png", color: "purple", category: "design")
architect = Merit.create(name: "Architect", description: "Create a game with intricate rules and design.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070727497244737678/Architect.png", color: "purple", category: "design")
artist = Merit.create(name: "Artist", description: "Design something visually distinct: a game, a character, etc.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070727497471250542/Artist.png", color: "purple", category: "design")
scribe = Merit.create(name: "Scribe", description: "Write something original: Immortal Games lore, an RPG story, etc.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070727568912830535/Scribe.png", color: "purple", category: "design")
inspector = Merit.create(name: "Inspector", description: "Plytest another student's creation and give feedback", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070727499459330178/Inspector.png", color: "purple", category: "design")
scholar = Merit.create(name: "Scholar", description: "DM an RPG or run your original game.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070727568715677817/Scholar.png", color: "purple", category: "design")
brewer = Merit.create(name: "Brewer", description: "Design a game at home and bring it into the Lab.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070727497882271896/Brewer.png", color: "purple", category: "design")
crafter = Merit.create(name: "Crafter", description: "Complete a desgin activity at Brooklyn Game Lab", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070727498154922004/Crafter.png", color: "purple", category: "design")
enshrined = Merit.create(name: "Enshrined", description: "Your idea was added to a game or the Immortal Games.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070727499266400347/Enshrined.png", color: "purple", category: "design")
crystallized = Merit.create(name: "Crystallized", description: "Your idea became the official mod or heavily influenced it.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070727498767270028/Crystallized.png", color: "purple", category: "design")
nominated = Merit.create(name: "Nominated", description: "Your idea influenced the official mod or came close to it.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070727499702620160/Nominated.png", color: "purple", category: "design")

p "Design Merits Created"

enthusiast = Merit.create(name: "Enthusiast", description: "Shout out anothers person's idea or strategy.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070721959165427752/Enthusiast.png", color: "blue", category: "virtue")
tactician = Merit.create(name: "Tactician", description: "Show string understanding of a game's strategy.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070722005965492285/Tactician.png", color: "blue", category: "virtue")
pioneer = Merit.create(name: "Pioneer", description: "Try a new or unconventional strategy in a game.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070721960331464714/Pioneer.png", color: "blue", category: "virtue")
sage = Merit.create(name: "Sage", description: "Show true patience, either with in-game strategy or out of game attitude.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070722005705437194/Sage.png", color: "blue", category: "virtue")
ham = Merit.create(name: "Ham", description: "Show a strong sense of humor in or out of game.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070721959379357696/Ham.png", color: "blue", category: "virtue")
tag_team = Merit.create(name: "Tag Team", description: "Work well with a partner, either in or out of game.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070722006225530891/Tagteam.png", color: "blue", category: "virtue")
deputy = Merit.create(name: "Deputy", description: "Help set up, clean up, or run a game. Help your counselor make things work!", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070721958741823528/Deputy.png", color: "blue", category: "virtue")
diplomat = Merit.create(name: "Diplomat", description: "Show great people skills; cooperate with other players.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070721958955720784/Diplomat.png", color: "blue", category: "virtue")
hunted = Merit.create(name: "Hunted", description: "Show strong character when being targeted by other players.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070721959584858152/Hunted.png", color: "blue", category: "virtue")
noble = Merit.create(name: "Noble", description: "Commit a selfless or noble act, in or out of game.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070721960092368926/Noble.png", color: "blue", category: "virtue")
tough = Merit.create(name: "Tough", description: "Show strong resolve in the face of bad luck or circumstances.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070722006443638805/Tough.png", color: "blue", category: "virtue")
weasel = Merit.create(name: "Weasel", description: "Play using an understated or generally sneaky strategy.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070722006644969482/Weasel.png", color: "blue", category: "virtue")
brilliant = Merit.create(name: "Brilliant", description: "Have an awesome idea during Lab discussion.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070721958217535518/Brilliant.png", color: "blue", category: "virtue")
classy = Merit.create(name: "Classy", description: "Listen attentively and share feedback during Lab discussion.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070721958502727770/Classy.png", color: "blue", category: "virtue")
navigator = Merit.create(name: "Navigator", description: "Assist a new or inexperienced person in the Lab, either in or out of game.", image: "https://cdn.discordapp.com/attachments/1070018621562175568/1070721959811371098/Navigator.png", color: "blue", category: "virtue")

p "Virtue Merits Created"

instructor1 = Instructor.create(instructor_code: 1234, name: "Serrin Doscher", email: "serrin@example.com", password: "aperature", username: "serrinsage", site: "479 7th Avenue")

p "Instructors Created"

user1 = User.create(parent_code: 5678, name: "Christine Woods", email: "christine@example.com",  password: "wizard", username: "TreeWizard")

p "Users Created"

student1 = Student.create(name: "Jimmy Edwards", age: 10, immortal_house: "Dyre", level: 7, merit_array: [beast, sage, diplomat], instructor_id: instructor1.id, user_id: user1.id)
student2 = Student.create(name: Faker::Name.name, age: 10, immortal_house: "", level: 0, merit_array: [], instructor_id: instructor1.id, user_id: 0)
student3 = Student.create(name: Faker::Name.name, age: 10, immortal_house: "", level: 0, merit_array: [], instructor_id: instructor1.id, user_id: 0)
student4 = Student.create(name: Faker::Name.name, age: 10, immortal_house: "", level: 0, merit_array: [], instructor_id: instructor1.id, user_id: 0)
student5 = Student.create(name: Faker::Name.name, age: 10, immortal_house: "", level: 0, merit_array: [], instructor_id: instructor1.id, user_id: 0)
student6 = Student.create(name: Faker::Name.name, age: 10, immortal_house: "", level: 0, merit_array: [], instructor_id: instructor1.id, user_id: 0)
student7 = Student.create(name: Faker::Name.name, age: 10, immortal_house: "", level: 0, merit_array: [], instructor_id: instructor1.id, user_id: 0)
student8 = Student.create(name: Faker::Name.name, age: 10, immortal_house: "", level: 0, merit_array: [], instructor_id: instructor1.id, user_id: 0)
student9 = Student.create(name: Faker::Name.name, age: 10, immortal_house: "", level: 0, merit_array: [], instructor_id: instructor1.id, user_id: 0)
student10 = Student.create(name: Faker::Name.name, age: 10, immortal_house: "", level: 0, merit_array: [], instructor_id: instructor1.id, user_id: 0)

p "Students Created"
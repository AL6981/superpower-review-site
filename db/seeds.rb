# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(email: 'user1@email.com')

Superpower.find_or_create_by!( name: 'Super Speed', description: 'I like to go really fast!', user: user1)


superpower1 = Superpower.create!(name: 'Invisibility', description: 'User can render themselves unseen by the naked eye and become invisible in visible spectrum. The user can move about an environment unseen by others and act without being observed. Some users can choose to let certain people see them, while staying invisible to others.')
superpower2 = Superpower.create!(name: 'Regenerative Healing Factor', description: 'The user can rapidly regenerate. In other words, they recreate lost or damaged tissues, organs and limbs, sometimes slowing, or even stopping, ageing. The rate and amount of healing varies widely; some can regrow missing limbs, others must put the limb back in place for rapid regeneration. They are generally in very good physical shape as their bodies are constantly reverting to healthy state, granting them nigh-inexhaustible stamina and vitality.')
superpower3 = Superpower.create!(name: 'Replication', description: 'User can instantly and perfectly replicate themselves and/or targets which can be objects or living beings, numerous times, while usually being able to recombine the clones. Most users have both of these abilities (if subconsciously), copying their clothes/equipment along with their body. Original target will normally be able to maintain control over all copies.')
superpower4 = Superpower.create!(name: 'Wallcrawling', description: 'The user can climb walls and stay unto ceilings. The user does not deny gravity, but has the ability to adhere to surfaces unaided. However in order to truly be "crawling" on the user must be able to maintain balance for long periods of time, compared to Wallrunning where the energy is only temporary. Beings with super human strength or super strong and dense claws could simply dig their fingers or into a surface, then propelling upward and digging in again, generating the effect of wall crawling. In some cases, the user may simply be able to make use of any handholds they find, no matter how small, to wall crawl.')
superpower5 = Superpower.create!(name: 'Invulnerability', description: 'The user is immune to all forms of conventional physical damage, unable to feel physical pain, is immune to bleeding or loss of limb. Death due to old age (as opposed to preemptive death) is seemingly the only cause of death to the user.')
superpower6 = Superpower.create!(name: 'Immobility', description: 'The user can never be moved by an external physical force, but may freely position themselves.')
superpower7 = Superpower.create!(name: 'Camouflage', description: 'The user can visually blend into surroundings by blending in with the coloration and form of their background to avoid optical perception. Some users can affect their attire by means of "static camouflage".')
superpower8 = Superpower.create!(name: 'Fire Generation', description: 'The user is able to generate and project fire.')
superpower9 = Superpower.create!(name: 'Aquatic Respiration', description: 'The user can breathe in both water and air and are capable of staying underwater as long as they like and reemerge ready to breathe oxygen again.')
superpower10 = Superpower.create!(name: 'Supernatural Reflexes', description: 'Users have glaringly, obviously and super/unnaturally superior reaction speed over their race because their capabilities are pushed beyond the natural level, making them able to react faster than normal members of their species.')
superpowe11 = Superpower.create!(name: 'X-Ray Vision', description: 'The user’s eyes emit a ray frequency that produces a transparency effect (i.e. x-ray) to visually penetrate solid objects or see within objects. Can be used for medical purposes such as the detection of cancers, tumors, blackened lungs, etc. The skill of perceiving a specific location (i.e. artery) is given by partial reflection of the ray from each specific surface surveyed. The direction of incoming light allows for a positioned focus on the depth of a viewing surface.')
superpower12 = Superpower.create!(name: 'Telekinesis', description: 'User can influence/manipulate/move objects/matter with their mind. Telekinesis is one of the basis of many superpowers that are based on controlling/manipulating, and may evolve to the point that a Telekinetic can control anything at a subatomic, particle and universal level.')

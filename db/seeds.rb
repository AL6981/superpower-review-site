# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.find_or_create_by!(email: 'admin@email.com', role: 'admin') do |user|
  user.password = "password"
end

member = User.find_or_create_by!(email: 'member@email.com') do |user|
  user.password = "password"
end

superpower1 = Superpower.find_or_create_by!(user: admin, name: 'Invisibility', description: 'User can render themselves unseen by the naked eye and become invisible in visible spectrum. The user can move about an environment unseen by others and act without being observed. Some users can choose to let certain people see them, while staying invisible to others.')
superpower2 = Superpower.find_or_create_by!(user: admin, name: 'Regenerative Healing', description: 'The user can rapidly regenerate. In other words, they refind_or_create_by lost or damaged tissues, organs and limbs, sometimes slowing, or even stopping, ageing. The rate and amount of healing varies widely; some can regrow missing limbs, others must put the limb back in place for rapid regeneration.')
superpower3 = Superpower.find_or_create_by!(user: admin, name: 'Replication', description: 'User can instantly and perfectly replicate themselves and/or targets which can be objects or living beings, numerous times, while usually being able to recombine the clones. Most users have both of these abilities (if subconsciously), copying their clothes/equipment along with their body. Original target will normally be able to maintain control over all copies.')
superpower4 = Superpower.find_or_create_by!(user: admin, name: 'Wallcrawling', description: 'The user can climb walls and stay unto ceilings. The user does not deny gravity, but has the ability to adhere to surfaces unaided. However in order to truly be "crawling" on the user must be able to maintain balance for long periods of time, compared to Wallrunning where the energy is only temporary.')
superpower5 = Superpower.find_or_create_by!(user: admin, name: 'Invulnerability', description: 'The user is immune to all forms of conventional physical damage, unable to feel physical pain, is immune to bleeding or loss of limb. Death due to old age (as opposed to preemptive death) is seemingly the only cause of death to the user.')
superpower6 = Superpower.find_or_create_by!(user: admin, name: 'Immobility', description: 'The user can never be moved by an external physical force, but may freely position themselves.')
superpower7 = Superpower.find_or_create_by!(user: admin, name: 'Camouflage', description: 'The user can visually blend into surroundings by blending in with the coloration and form of their background to avoid optical perception. Some users can affect their attire by means of "static camouflage".')
superpower8 = Superpower.find_or_create_by!(user: admin, name: 'Fire Generation', description: 'The user is able to generate and project fire.')
superpower9 = Superpower.find_or_create_by!(user: admin, name: 'Aquatic Respiration', description: 'The user can breathe in both water and air and are capable of staying underwater as long as they like and reemerge ready to breathe oxygen again.')
superpower10 = Superpower.find_or_create_by!(user: admin, name: 'Supernatural Reflexes', description: 'Users have glaringly, obviously and super/unnaturally superior reaction speed over their race because their capabilities are pushed beyond the natural level, making them able to react faster than normal members of their species.')
superpowe11 = Superpower.find_or_create_by!(user: admin, name: 'X-Ray Vision', description: 'The user’s eyes emit a ray frequency that produces a transparency effect (i.e. x-ray) to visually penetrate solid objects or see within objects. Can be used for medical purposes such as the detection of cancers, tumors, blackened lungs, etc.')
superpower12 = Superpower.find_or_create_by!(user: admin, name: 'Telekinesis', description: 'User can influence/manipulate/move objects/matter with their mind. Telekinesis is one of the basis of many superpowers that are based on controlling/manipulating, and may evolve to the point that a Telekinetic can control anything at a subatomic, particle and universal level.')
superpower13 = Superpower.find_or_create_by!(user: admin, name: 'Sonic Scream', description: 'The power to emit highly enhanced scream of a high amplitude. Sub-power of Sound Attacks. Variation of Sound Wave Generation.')
superpower14 = Superpower.find_or_create_by!(user: admin, name: 'Poison Immunity', description: 'The power to be immune to all forms of poisons. Sub-power of Contaminant Immunity and Poison Manipulation. Variation of Selective Invulnerability.')
superpower15 = Superpower.find_or_create_by!(user: admin, name: 'Flexibility', description: 'User is able to bend and twist their body far beyond the normal limits of physiology, although still only from the joints. Their joints, muscles, tendons and physiology in general is modified to allow the user perform near-boneless looking contortions without stress or damage and stay in any position they choose as long they need without effort or strain.')
superpower16 = Superpower.find_or_create_by!(user: admin, name: 'Enhanced Thievery', description: 'The ability to possess skills that allow one to rob, steal, and loot like a master thief. Lesser form of Supernatural Thievery.')
superpower17 = Superpower.find_or_create_by!(user: admin, name: 'Master Taster', description: 'User has sense of taste that is glaringly, obviously and super/unnaturally more acute than their race because their capabilities are pushed to a superhuman level. Allowing them to be able to identify unknown things by tasting them, remotely taste everything in their environment from a great distance, and the smallest details; to the extent of molecular distinguishment.')
superpower18 = Superpower.find_or_create_by!(user: admin, name: 'Astral Projection', description: 'User can separate their spirit from the body by entering a trance, gaining access of travel to the Astral Plane. Experienced individuals may control both the Astral and Corporeal presences.')
superpower19 = Superpower.find_or_create_by!(user: admin, name: 'Danger Intuition', description: 'The user can sense nearing danger, acute danger, potential danger, immediate danger, potential immediate danger, and impending danger and sense unwanted or hectic threats to their well-being and evade it. The intuition usually regards themselves, but may include their surroundings (a distant car-wreck).')
superpower20 = Superpower.find_or_create_by!(user: admin, name: 'Hypnosis', description: 'The user is able to affect or directly influence other peoples minds to their commands.')
superpower21 = Superpower.find_or_create_by!(user: admin, name: 'Mind Control', description: 'User can control the minds of others with targets being completely subject to their mental control. If the victims were placed into a semi-conscious state, they may not have any recollection of the previous actions that they performed while under its effect.')
superpower22 = Superpower.find_or_create_by!(user: admin, name: 'Cloaking', description: 'User with this ability turns the object/subject imperceptible, hiding it from even clairvoyant sight.')
superpower23 = Superpower.find_or_create_by!(user: admin, name: 'Molecular Manipulation', description: 'The user can manipulate molecules to achieve a wide variety of effects. See List of Molecular Abilities for details.')
superpower24 = Superpower.find_or_create_by!(user: admin, name: 'Summoning', description: 'The user can transport person, creature, or object of choice by means of Teleportation, Dimensional Travel, Portal Creation or some other way. This may also result from a previous summoning contract, which creates a connection between the summon and summoner.')




Review.find_or_create_by!(rating: 3, body: 'You can\'t see this review', superpower: superpower1, user: admin)
Review.find_or_create_by!(rating: 1, body: 'This power makes me lonely...', superpower: superpower1, user: admin)

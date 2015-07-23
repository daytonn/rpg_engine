defmodule D20.FifthEdition.Class.Wizard.Spec do
  use ESpec
  alias D20.FifthEdition.Class.Wizard

  before do: {:ok, character: %{level: 2}}
  let :character, do: __.character

  describe "hit_dice/1" do
    it "returns a count of the character's level and 6 sides" do
      expect(Wizard.hit_dice(character)).to eq(count: character.level, sides: 6)
    end
  end

  describe "starting_copper/0" do
    it "is greater than 3999" do
      expect(Wizard.starting_copper).to be :>, 3999
    end

    it "is less than 16001" do
      expect(Wizard.starting_copper).to be :<, 16001
    end
  end

  describe "cantrips/0" do
    it "contains Acid Splash" do
      expect(Wizard.cantrips).to have("Acid Splash")
    end

    it "contains Blade Ward" do
      expect(Wizard.cantrips).to have("Blade Ward")
    end

    it "contains Chill Touch" do
      expect(Wizard.cantrips).to have("Chill Touch")
    end

    it "contains Dancing Lights" do
      expect(Wizard.cantrips).to have("Dancing Lights")
    end

    it "contains Fire Bolt" do
      expect(Wizard.cantrips).to have("Fire Bolt")
    end

    it "contains Friends" do
      expect(Wizard.cantrips).to have("Friends")
    end

    it "contains Light" do
      expect(Wizard.cantrips).to have("Light")
    end

    it "contains Mage Hand " do
      expect(Wizard.cantrips).to have("Mage Hand ")
    end

    it "contains Mending Message" do
      expect(Wizard.cantrips).to have("Mending Message")
    end

    it "contains Minor Illusion " do
      expect(Wizard.cantrips).to have("Minor Illusion ")
    end

    it "contains Poison Spray" do
      expect(Wizard.cantrips).to have("Poison Spray")
    end

    it "contains Prestidigitation" do
      expect(Wizard.cantrips).to have("Prestidigitation")
    end

    it "contains Ray of Frost" do
      expect(Wizard.cantrips).to have("Ray of Frost")
    end

    it "contains Shocking Grasp" do
      expect(Wizard.cantrips).to have("Shocking Grasp")
    end

    it "contains True Strike" do
      expect(Wizard.cantrips).to have("True Strike")
    end
  end

  describe "spells/0" do
    it "contains Alarm" do
      expect(Wizard.spells).to have("Alarm")
    end

    it "contains Alter Self" do
      expect(Wizard.spells).to have("Alter Self")
    end

    it "contains Animate Dead" do
      expect(Wizard.spells).to have("Animate Dead")
    end

    it "contains Animate Objects" do
      expect(Wizard.spells).to have("Animate Objects")
    end

    it "contains Antimagic Field" do
      expect(Wizard.spells).to have("Antimagic Field")
    end

    it "contains Antipathy/Sympathy" do
      expect(Wizard.spells).to have("Antipathy/Sympathy")
    end

    it "contains Arcane Eye" do
      expect(Wizard.spells).to have("Arcane Eye")
    end

    it "contains Arcane Gate" do
      expect(Wizard.spells).to have("Arcane Gate")
    end

    it "contains Arcane Lock" do
      expect(Wizard.spells).to have("Arcane Lock")
    end

    it "contains Astral Projection" do
      expect(Wizard.spells).to have("Astral Projection")
    end

    it "contains Banishment" do
      expect(Wizard.spells).to have("Banishment")
    end

    it "contains Bestow Curse" do
      expect(Wizard.spells).to have("Bestow Curse")
    end

    it "contains Bigby's Hand" do
      expect(Wizard.spells).to have("Bigby's Hand")
    end

    it "contains Blight" do
      expect(Wizard.spells).to have("Blight")
    end

    it "contains Blindness/Deafness" do
      expect(Wizard.spells).to have("Blindness/Deafness")
    end

    it "contains Blink" do
      expect(Wizard.spells).to have("Blink")
    end

    it "contains Blur" do
      expect(Wizard.spells).to have("Blur")
    end

    it "contains Burning Hands" do
      expect(Wizard.spells).to have("Burning Hands")
    end

    it "contains Chain Lightning" do
      expect(Wizard.spells).to have("Chain Lightning")
    end

    it "contains Charm Person" do
      expect(Wizard.spells).to have("Charm Person")
    end

    it "contains Chromatic Orb" do
      expect(Wizard.spells).to have("Chromatic Orb")
    end

    it "contains Circle of Death" do
      expect(Wizard.spells).to have("Circle of Death")
    end

    it "contains Clairvoyance" do
      expect(Wizard.spells).to have("Clairvoyance")
    end

    it "contains Clone" do
      expect(Wizard.spells).to have("Clone")
    end

    it "contains Cloud of Daggers" do
      expect(Wizard.spells).to have("Cloud of Daggers")
    end

    it "contains Cloudkill" do
      expect(Wizard.spells).to have("Cloudkill")
    end

    it "contains Color Spray" do
      expect(Wizard.spells).to have("Color Spray")
    end

    it "contains Comprehend Languages" do
      expect(Wizard.spells).to have("Comprehend Languages")
    end

    it "contains Cone of Cold" do
      expect(Wizard.spells).to have("Cone of Cold")
    end

    it "contains Confusion" do
      expect(Wizard.spells).to have("Confusion")
    end

    it "contains Conjure Elemental" do
      expect(Wizard.spells).to have("Conjure Elemental")
    end

    it "contains Conjure Minor Elementals" do
      expect(Wizard.spells).to have("Conjure Minor Elementals")
    end

    it "contains Contact Other Plane" do
      expect(Wizard.spells).to have("Contact Other Plane")
    end

    it "contains Contingency" do
      expect(Wizard.spells).to have("Contingency")
    end

    it "contains Continual Flame" do
      expect(Wizard.spells).to have("Continual Flame")
    end

    it "contains Control Water" do
      expect(Wizard.spells).to have("Control Water")
    end

    it "contains Control Weather" do
      expect(Wizard.spells).to have("Control Weather")
    end

    it "contains Counterspell" do
      expect(Wizard.spells).to have("Counterspell")
    end

    it "contains Create Undead" do
      expect(Wizard.spells).to have("Create Undead")
    end

    it "contains Creation" do
      expect(Wizard.spells).to have("Creation")
    end

    it "contains Crown of Madness" do
      expect(Wizard.spells).to have("Crown of Madness")
    end

    it "contains Darkness" do
      expect(Wizard.spells).to have("Darkness")
    end

    it "contains Darkvision" do
      expect(Wizard.spells).to have("Darkvision")
    end

    it "contains Delayed Blast Fireball" do
      expect(Wizard.spells).to have("Delayed Blast Fireball")
    end

    it "contains Demiplane" do
      expect(Wizard.spells).to have("Demiplane")
    end

    it "contains Detect Magic" do
      expect(Wizard.spells).to have("Detect Magic")
    end

    it "contains Detect Thoughts" do
      expect(Wizard.spells).to have("Detect Thoughts")
    end

    it "contains Dimension Door" do
      expect(Wizard.spells).to have("Dimension Door")
    end

    it "contains Disguise Self" do
      expect(Wizard.spells).to have("Disguise Self")
    end

    it "contains Disintegrate" do
      expect(Wizard.spells).to have("Disintegrate")
    end

    it "contains Dispel Magic" do
      expect(Wizard.spells).to have("Dispel Magic")
    end

    it "contains Dominate Monster" do
      expect(Wizard.spells).to have("Dominate Monster")
    end

    it "contains Dominate Person" do
      expect(Wizard.spells).to have("Dominate Person")
    end

    it "contains Drawmij's Instant Summons" do
      expect(Wizard.spells).to have("Drawmij's Instant Summons")
    end

    it "contains Dream" do
      expect(Wizard.spells).to have("Dream")
    end

    it "contains Enlarge/Reduce" do
      expect(Wizard.spells).to have("Enlarge/Reduce")
    end

    it "contains Etherealness" do
      expect(Wizard.spells).to have("Etherealness")
    end

    it "contains Evard's Black Tentacles" do
      expect(Wizard.spells).to have("Evard's Black Tentacles")
    end

    it "contains Expeditious Retreat" do
      expect(Wizard.spells).to have("Expeditious Retreat")
    end

    it "contains Eyebite" do
      expect(Wizard.spells).to have("Eyebite")
    end

    it "contains Fabricate" do
      expect(Wizard.spells).to have("Fabricate")
    end

    it "contains False Life" do
      expect(Wizard.spells).to have("False Life")
    end

    it "contains Fear" do
      expect(Wizard.spells).to have("Fear")
    end

    it "contains Feather Fall" do
      expect(Wizard.spells).to have("Feather Fall")
    end

    it "contains Feeblemind" do
      expect(Wizard.spells).to have("Feeblemind")
    end

    it "contains Feign Death" do
      expect(Wizard.spells).to have("Feign Death")
    end

    it "contains Find Familiar" do
      expect(Wizard.spells).to have("Find Familiar")
    end

    it "contains Finger of Death" do
      expect(Wizard.spells).to have("Finger of Death")
    end

    it "contains Fire Shield" do
      expect(Wizard.spells).to have("Fire Shield")
    end

    it "contains Fireball" do
      expect(Wizard.spells).to have("Fireball")
    end

    it "contains Flaming Sphere" do
      expect(Wizard.spells).to have("Flaming Sphere")
    end

    it "contains Flesh to Stone" do
      expect(Wizard.spells).to have("Flesh to Stone")
    end

    it "contains Fly" do
      expect(Wizard.spells).to have("Fly")
    end

    it "contains Fog Cloud" do
      expect(Wizard.spells).to have("Fog Cloud")
    end

    it "contains Forcecage" do
      expect(Wizard.spells).to have("Forcecage")
    end

    it "contains Foresight" do
      expect(Wizard.spells).to have("Foresight")
    end

    it "contains Gaseous Form" do
      expect(Wizard.spells).to have("Gaseous Form")
    end

    it "contains Gate" do
      expect(Wizard.spells).to have("Gate")
    end

    it "contains Geas" do
      expect(Wizard.spells).to have("Geas")
    end

    it "contains Gentle Repose" do
      expect(Wizard.spells).to have("Gentle Repose")
    end

    it "contains Globe of Invulnerability" do
      expect(Wizard.spells).to have("Globe of Invulnerability")
    end

    it "contains Glyph of Warding" do
      expect(Wizard.spells).to have("Glyph of Warding")
    end

    it "contains Grease" do
      expect(Wizard.spells).to have("Grease")
    end

    it "contains Greater Invisibility" do
      expect(Wizard.spells).to have("Greater Invisibility")
    end

    it "contains Guards and Wards" do
      expect(Wizard.spells).to have("Guards and Wards")
    end

    it "contains Gust of Wind" do
      expect(Wizard.spells).to have("Gust of Wind")
    end

    it "contains Hallucinatory Terrain" do
      expect(Wizard.spells).to have("Hallucinatory Terrain")
    end

    it "contains Haste" do
      expect(Wizard.spells).to have("Haste")
    end

    it "contains Hold Monster" do
      expect(Wizard.spells).to have("Hold Monster")
    end

    it "contains Hold Person" do
      expect(Wizard.spells).to have("Hold Person")
    end

    it "contains Hypnotic Pattern" do
      expect(Wizard.spells).to have("Hypnotic Pattern")
    end

    it "contains Ice Storm" do
      expect(Wizard.spells).to have("Ice Storm")
    end

    it "contains Identify" do
      expect(Wizard.spells).to have("Identify")
    end

    it "contains Illusory Script" do
      expect(Wizard.spells).to have("Illusory Script")
    end

    it "contains Imprisonment" do
      expect(Wizard.spells).to have("Imprisonment")
    end

    it "contains Incendiary Cloud" do
      expect(Wizard.spells).to have("Incendiary Cloud")
    end

    it "contains Invisibility" do
      expect(Wizard.spells).to have("Invisibility")
    end

    it "contains Jump" do
      expect(Wizard.spells).to have("Jump")
    end

    it "contains Knock" do
      expect(Wizard.spells).to have("Knock")
    end

    it "contains Legend Lore" do
      expect(Wizard.spells).to have("Legend Lore")
    end

    it "contains Leomund's Secret Chest" do
      expect(Wizard.spells).to have("Leomund's Secret Chest")
    end

    it "contains Leomund's Tiny Hut" do
      expect(Wizard.spells).to have("Leomund's Tiny Hut")
    end

    it "contains Levitate" do
      expect(Wizard.spells).to have("Levitate")
    end

    it "contains Lightning Bolt" do
      expect(Wizard.spells).to have("Lightning Bolt")
    end

    it "contains Locate Creature" do
      expect(Wizard.spells).to have("Locate Creature")
    end

    it "contains Locate Object" do
      expect(Wizard.spells).to have("Locate Object")
    end

    it "contains Longstrider" do
      expect(Wizard.spells).to have("Longstrider")
    end

    it "contains Mage Armor" do
      expect(Wizard.spells).to have("Mage Armor")
    end

    it "contains Magic Circle" do
      expect(Wizard.spells).to have("Magic Circle")
    end

    it "contains Magic Jar" do
      expect(Wizard.spells).to have("Magic Jar")
    end

    it "contains Magic Missile" do
      expect(Wizard.spells).to have("Magic Missile")
    end

    it "contains Magic Mouth" do
      expect(Wizard.spells).to have("Magic Mouth")
    end

    it "contains Magic Weapon" do
      expect(Wizard.spells).to have("Magic Weapon")
    end

    it "contains Major Image" do
      expect(Wizard.spells).to have("Major Image")
    end

    it "contains Mass Suggestion" do
      expect(Wizard.spells).to have("Mass Suggestion")
    end

    it "contains Maze" do
      expect(Wizard.spells).to have("Maze")
    end

    it "contains Melf's Acid Arrow" do
      expect(Wizard.spells).to have("Melf's Acid Arrow")
    end

    it "contains Meteor Swarm" do
      expect(Wizard.spells).to have("Meteor Swarm")
    end

    it "contains Mind Blank" do
      expect(Wizard.spells).to have("Mind Blank")
    end

    it "contains Mirage Arcane" do
      expect(Wizard.spells).to have("Mirage Arcane")
    end

    it "contains Mirror Image" do
      expect(Wizard.spells).to have("Mirror Image")
    end

    it "contains Mislead" do
      expect(Wizard.spells).to have("Mislead")
    end

    it "contains Misty Step" do
      expect(Wizard.spells).to have("Misty Step")
    end

    it "contains Modify Memory" do
      expect(Wizard.spells).to have("Modify Memory")
    end

    it "contains Mordenkainen's Faithful Hound" do
      expect(Wizard.spells).to have("Mordenkainen's Faithful Hound")
    end

    it "contains Mordenkainen's Magnificent Mansion" do
      expect(Wizard.spells).to have("Mordenkainen's Magnificent Mansion")
    end

    it "contains Mordenkainen's Private Sanctum" do
      expect(Wizard.spells).to have("Mordenkainen's Private Sanctum")
    end

    it "contains Mordenkainen's Sword" do
      expect(Wizard.spells).to have("Mordenkainen's Sword")
    end

    it "contains Move Earth" do
      expect(Wizard.spells).to have("Move Earth")
    end

    it "contains Nondetection" do
      expect(Wizard.spells).to have("Nondetection")
    end

    it "contains Nystul's Magic Aura" do
      expect(Wizard.spells).to have("Nystul's Magic Aura")
    end

    it "contains Otiluke's Freezing Sphere" do
      expect(Wizard.spells).to have("Otiluke's Freezing Sphere")
    end

    it "contains Otiluke's Resilient Sphere" do
      expect(Wizard.spells).to have("Otiluke's Resilient Sphere")
    end

    it "contains Otto's Irresistible Dance" do
      expect(Wizard.spells).to have("Otto's Irresistible Dance")
    end

    it "contains Passwall" do
      expect(Wizard.spells).to have("Passwall")
    end

    it "contains Phantasmal Force" do
      expect(Wizard.spells).to have("Phantasmal Force")
    end

    it "contains Phantasmal Killer" do
      expect(Wizard.spells).to have("Phantasmal Killer")
    end

    it "contains Phantom Steed" do
      expect(Wizard.spells).to have("Phantom Steed")
    end

    it "contains Planar Binding" do
      expect(Wizard.spells).to have("Planar Binding")
    end

    it "contains Plane Shift" do
      expect(Wizard.spells).to have("Plane Shift")
    end

    it "contains Polymorph" do
      expect(Wizard.spells).to have("Polymorph")
    end

    it "contains Power Word Kill" do
      expect(Wizard.spells).to have("Power Word Kill")
    end

    it "contains Power Word Stun" do
      expect(Wizard.spells).to have("Power Word Stun")
    end

    it "contains Prismatic Spray" do
      expect(Wizard.spells).to have("Prismatic Spray")
    end

    it "contains Prismatic Wall" do
      expect(Wizard.spells).to have("Prismatic Wall")
    end

    it "contains Programmed Illusion" do
      expect(Wizard.spells).to have("Programmed Illusion")
    end

    it "contains Project Image" do
      expect(Wizard.spells).to have("Project Image")
    end

    it "contains Protection from Energy" do
      expect(Wizard.spells).to have("Protection from Energy")
    end

    it "contains Protection from Evil and Good" do
      expect(Wizard.spells).to have("Protection from Evil and Good")
    end

    it "contains Rary's Telepathic Bond" do
      expect(Wizard.spells).to have("Rary's Telepathic Bond")
    end

    it "contains Ray of Enfeeblement" do
      expect(Wizard.spells).to have("Ray of Enfeeblement")
    end

    it "contains Ray of Sickness" do
      expect(Wizard.spells).to have("Ray of Sickness")
    end

    it "contains Remove Curse" do
      expect(Wizard.spells).to have("Remove Curse")
    end

    it "contains Reverse Gravity" do
      expect(Wizard.spells).to have("Reverse Gravity")
    end

    it "contains Rope Trick" do
      expect(Wizard.spells).to have("Rope Trick")
    end

    it "contains Scorching Ray" do
      expect(Wizard.spells).to have("Scorching Ray")
    end

    it "contains Scrying" do
      expect(Wizard.spells).to have("Scrying")
    end

    it "contains See Invisibility" do
      expect(Wizard.spells).to have("See Invisibility")
    end

    it "contains Seeming" do
      expect(Wizard.spells).to have("Seeming")
    end

    it "contains Sending" do
      expect(Wizard.spells).to have("Sending")
    end

    it "contains Sequester" do
      expect(Wizard.spells).to have("Sequester")
    end

    it "contains Shapechange" do
      expect(Wizard.spells).to have("Shapechange")
    end

    it "contains Shatter" do
      expect(Wizard.spells).to have("Shatter")
    end

    it "contains Shield" do
      expect(Wizard.spells).to have("Shield")
    end

    it "contains Silent Image" do
      expect(Wizard.spells).to have("Silent Image")
    end

    it "contains Simulacrum" do
      expect(Wizard.spells).to have("Simulacrum")
    end

    it "contains Sleep" do
      expect(Wizard.spells).to have("Sleep")
    end

    it "contains Sleet Storm" do
      expect(Wizard.spells).to have("Sleet Storm")
    end

    it "contains Slow" do
      expect(Wizard.spells).to have("Slow")
    end

    it "contains Spider Climb" do
      expect(Wizard.spells).to have("Spider Climb")
    end

    it "contains Stinking Cloud" do
      expect(Wizard.spells).to have("Stinking Cloud")
    end

    it "contains Stone Shape" do
      expect(Wizard.spells).to have("Stone Shape")
    end

    it "contains Stoneskin" do
      expect(Wizard.spells).to have("Stoneskin")
    end

    it "contains Suggestion" do
      expect(Wizard.spells).to have("Suggestion")
    end

    it "contains Sunbeam" do
      expect(Wizard.spells).to have("Sunbeam")
    end

    it "contains Sunburst" do
      expect(Wizard.spells).to have("Sunburst")
    end

    it "contains Symbol" do
      expect(Wizard.spells).to have("Symbol")
    end

    it "contains Tasha's Hideous Laughter" do
      expect(Wizard.spells).to have("Tasha's Hideous Laughter")
    end

    it "contains Telekinesis" do
      expect(Wizard.spells).to have("Telekinesis")
    end

    it "contains Telepathy" do
      expect(Wizard.spells).to have("Telepathy")
    end

    it "contains Teleport" do
      expect(Wizard.spells).to have("Teleport")
    end

    it "contains Teleportation Circle" do
      expect(Wizard.spells).to have("Teleportation Circle")
    end

    it "contains Tenser's Floating Disk" do
      expect(Wizard.spells).to have("Tenser's Floating Disk")
    end

    it "contains Thunderwave" do
      expect(Wizard.spells).to have("Thunderwave")
    end

    it "contains Time Stop" do
      expect(Wizard.spells).to have("Time Stop")
    end

    it "contains Tongues" do
      expect(Wizard.spells).to have("Tongues")
    end

    it "contains True Polymorph" do
      expect(Wizard.spells).to have("True Polymorph")
    end

    it "contains True Seeing" do
      expect(Wizard.spells).to have("True Seeing")
    end

    it "contains Unseen Servant" do
      expect(Wizard.spells).to have("Unseen Servant")
    end

    it "contains Vampiric Touch" do
      expect(Wizard.spells).to have("Vampiric Touch")
    end

    it "contains Wall of Fire" do
      expect(Wizard.spells).to have("Wall of Fire")
    end

    it "contains Wall of Force" do
      expect(Wizard.spells).to have("Wall of Force")
    end

    it "contains Wall of Ice" do
      expect(Wizard.spells).to have("Wall of Ice")
    end

    it "contains Wall of Stone" do
      expect(Wizard.spells).to have("Wall of Stone")
    end

    it "contains Water Breathing" do
      expect(Wizard.spells).to have("Water Breathing")
    end

    it "contains Web" do
      expect(Wizard.spells).to have("Web")
    end

    it "contains Weird" do
      expect(Wizard.spells).to have("Weird")
    end

    it "contains Wish" do
      expect(Wizard.spells).to have("Wish")
    end

    it "contains Witch Bolt" do
      expect(Wizard.spells).to have("Witch Bolt")
    end
  end
end

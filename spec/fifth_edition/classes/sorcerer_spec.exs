defmodule D20.FifthEdition.Class.Sorcerer.Spec do
  use ESpec
  alias D20.FifthEdition.Character
  alias D20.FifthEdition.Class.Sorcerer

  before do: {:ok, character: %Character{level: 2}}
  let :character, do: __.character

  describe "hit_dice/1" do
    it "returns a count of the character's level and 6 sides" do
      expect(Sorcerer.hit_dice(character)).to eq(count: character.level, sides: 6)
    end
  end

  describe "starting_copper/0" do
    it "is greater than 2999" do
      expect(Sorcerer.starting_copper).to be :>, 2999
    end

    it "is less than 12001" do
      expect(Sorcerer.starting_copper).to be :<, 12001
    end
  end

  describe "cantrips/0" do
    it "contains Acid Splash" do
      expect(Sorcerer.cantrips).to have("Acid Splash")
    end

    it "contains Blade Ward" do
      expect(Sorcerer.cantrips).to have("Blade Ward")
    end

    it "contains Chill Touch" do
      expect(Sorcerer.cantrips).to have("Chill Touch")
    end

    it "contains Dancing Lights" do
      expect(Sorcerer.cantrips).to have("Dancing Lights")
    end

    it "contains Fire Bolt" do
      expect(Sorcerer.cantrips).to have("Fire Bolt")
    end

    it "contains Friends" do
      expect(Sorcerer.cantrips).to have("Friends")
    end

    it "contains Light" do
      expect(Sorcerer.cantrips).to have("Light")
    end

    it "contains Mage Hand" do
      expect(Sorcerer.cantrips).to have("Mage Hand")
    end

    it "contains Mending" do
      expect(Sorcerer.cantrips).to have("Mending")
    end

    it "contains Message" do
      expect(Sorcerer.cantrips).to have("Message")
    end

    it "contains Minor Illusion" do
      expect(Sorcerer.cantrips).to have("Minor Illusion")
    end

    it "contains Poison Spray" do
      expect(Sorcerer.cantrips).to have("Poison Spray")
    end

    it "contains Prestidigitation" do
      expect(Sorcerer.cantrips).to have("Prestidigitation")
    end

    it "contains Ray of Frost" do
      expect(Sorcerer.cantrips).to have("Ray of Frost")
    end

    it "contains Shocking Grasp" do
      expect(Sorcerer.cantrips).to have("Shocking Grasp")
    end

    it "contains True Strike" do
      expect(Sorcerer.cantrips).to have("True Strike")
    end
  end

  describe "spells/0" do
    it "contains Alter Self" do
      expect(Sorcerer.spells).to have("Alter Self")
    end

    it "contains Animate Objects" do
      expect(Sorcerer.spells).to have("Animate Objects")
    end

    it "contains Arcane Gate" do
      expect(Sorcerer.spells).to have("Arcane Gate")
    end

    it "contains Banishment" do
      expect(Sorcerer.spells).to have("Banishment")
    end

    it "contains Blight" do
      expect(Sorcerer.spells).to have("Blight")
    end

    it "contains Blindness/Deafness" do
      expect(Sorcerer.spells).to have("Blindness/Deafness")
    end

    it "contains Blink" do
      expect(Sorcerer.spells).to have("Blink")
    end

    it "contains Blur" do
      expect(Sorcerer.spells).to have("Blur")
    end

    it "contains Burning Hands" do
      expect(Sorcerer.spells).to have("Burning Hands")
    end

    it "contains Chain Lightning" do
      expect(Sorcerer.spells).to have("Chain Lightning")
    end

    it "contains Charm Person" do
      expect(Sorcerer.spells).to have("Charm Person")
    end

    it "contains Chromatic Orb" do
      expect(Sorcerer.spells).to have("Chromatic Orb")
    end

    it "contains Circle of Death" do
      expect(Sorcerer.spells).to have("Circle of Death")
    end

    it "contains Clairvoyance" do
      expect(Sorcerer.spells).to have("Clairvoyance")
    end

    it "contains Cloud of Daggers" do
      expect(Sorcerer.spells).to have("Cloud of Daggers")
    end

    it "contains Cloudkill" do
      expect(Sorcerer.spells).to have("Cloudkill")
    end

    it "contains Color Spray" do
      expect(Sorcerer.spells).to have("Color Spray")
    end

    it "contains Comprehend Languages" do
      expect(Sorcerer.spells).to have("Comprehend Languages")
    end

    it "contains Cone of Cold" do
      expect(Sorcerer.spells).to have("Cone of Cold")
    end

    it "contains Confusion" do
      expect(Sorcerer.spells).to have("Confusion")
    end

    it "contains Counterspell" do
      expect(Sorcerer.spells).to have("Counterspell")
    end

    it "contains Creation" do
      expect(Sorcerer.spells).to have("Creation")
    end

    it "contains Crown of Madness" do
      expect(Sorcerer.spells).to have("Crown of Madness")
    end

    it "contains Darkness" do
      expect(Sorcerer.spells).to have("Darkness")
    end

    it "contains Darkvision" do
      expect(Sorcerer.spells).to have("Darkvision")
    end

    it "contains Daylight" do
      expect(Sorcerer.spells).to have("Daylight")
    end

    it "contains Delayed Blast Fireball" do
      expect(Sorcerer.spells).to have("Delayed Blast Fireball")
    end

    it "contains Detect Magic" do
      expect(Sorcerer.spells).to have("Detect Magic")
    end

    it "contains Detect Thoughts" do
      expect(Sorcerer.spells).to have("Detect Thoughts")
    end

    it "contains Dimension Door" do
      expect(Sorcerer.spells).to have("Dimension Door")
    end

    it "contains Disguise Self" do
      expect(Sorcerer.spells).to have("Disguise Self")
    end

    it "contains Disintegrate" do
      expect(Sorcerer.spells).to have("Disintegrate")
    end

    it "contains Dispel Magic" do
      expect(Sorcerer.spells).to have("Dispel Magic")
    end

    it "contains Dominate Beast" do
      expect(Sorcerer.spells).to have("Dominate Beast")
    end

    it "contains Dominate Monster" do
      expect(Sorcerer.spells).to have("Dominate Monster")
    end

    it "contains Dominate Person" do
      expect(Sorcerer.spells).to have("Dominate Person")
    end

    it "contains Earthquake" do
      expect(Sorcerer.spells).to have("Earthquake")
    end

    it "contains Enhance Ability" do
      expect(Sorcerer.spells).to have("Enhance Ability")
    end

    it "contains Enlarge/Reduce" do
      expect(Sorcerer.spells).to have("Enlarge/Reduce")
    end

    it "contains Etherealness" do
      expect(Sorcerer.spells).to have("Etherealness")
    end

    it "contains Expeditious Retreat" do
      expect(Sorcerer.spells).to have("Expeditious Retreat")
    end

    it "contains Eyebite" do
      expect(Sorcerer.spells).to have("Eyebite")
    end

    it "contains False Life" do
      expect(Sorcerer.spells).to have("False Life")
    end

    it "contains Fear" do
      expect(Sorcerer.spells).to have("Fear")
    end

    it "contains Feather Fall" do
      expect(Sorcerer.spells).to have("Feather Fall")
    end

    it "contains Finger of Death" do
      expect(Sorcerer.spells).to have("Finger of Death")
    end

    it "contains Fire Storm" do
      expect(Sorcerer.spells).to have("Fire Storm")
    end

    it "contains Fireball" do
      expect(Sorcerer.spells).to have("Fireball")
    end

    it "contains Fly" do
      expect(Sorcerer.spells).to have("Fly")
    end

    it "contains Fog Cloud" do
      expect(Sorcerer.spells).to have("Fog Cloud")
    end

    it "contains Gaseous Form" do
      expect(Sorcerer.spells).to have("Gaseous Form")
    end

    it "contains Gate" do
      expect(Sorcerer.spells).to have("Gate")
    end

    it "contains Globe of Invulnerability" do
      expect(Sorcerer.spells).to have("Globe of Invulnerability")
    end

    it "contains Greater Invisibility" do
      expect(Sorcerer.spells).to have("Greater Invisibility")
    end

    it "contains Gust of Wind" do
      expect(Sorcerer.spells).to have("Gust of Wind")
    end

    it "contains Haste" do
      expect(Sorcerer.spells).to have("Haste")
    end

    it "contains Hold Monster" do
      expect(Sorcerer.spells).to have("Hold Monster")
    end

    it "contains Hold Person" do
      expect(Sorcerer.spells).to have("Hold Person")
    end

    it "contains Hypnotic Pattern" do
      expect(Sorcerer.spells).to have("Hypnotic Pattern")
    end

    it "contains Ice Storm" do
      expect(Sorcerer.spells).to have("Ice Storm")
    end

    it "contains Incendiary Cloud" do
      expect(Sorcerer.spells).to have("Incendiary Cloud")
    end

    it "contains Insect Plague" do
      expect(Sorcerer.spells).to have("Insect Plague")
    end

    it "contains Invisibility" do
      expect(Sorcerer.spells).to have("Invisibility")
    end

    it "contains Jump" do
      expect(Sorcerer.spells).to have("Jump")
    end

    it "contains Knock" do
      expect(Sorcerer.spells).to have("Knock")
    end

    it "contains Levitate" do
      expect(Sorcerer.spells).to have("Levitate")
    end

    it "contains Lightning Bolt" do
      expect(Sorcerer.spells).to have("Lightning Bolt")
    end

    it "contains Mage Armor" do
      expect(Sorcerer.spells).to have("Mage Armor")
    end

    it "contains Magic Missile" do
      expect(Sorcerer.spells).to have("Magic Missile")
    end

    it "contains Major Image" do
      expect(Sorcerer.spells).to have("Major Image")
    end

    it "contains Mass Suggestion" do
      expect(Sorcerer.spells).to have("Mass Suggestion")
    end

    it "contains Meteor Swarm" do
      expect(Sorcerer.spells).to have("Meteor Swarm")
    end

    it "contains Mirror Image" do
      expect(Sorcerer.spells).to have("Mirror Image")
    end

    it "contains Misty Step" do
      expect(Sorcerer.spells).to have("Misty Step")
    end

    it "contains Move Earth" do
      expect(Sorcerer.spells).to have("Move Earth")
    end

    it "contains Phantasmal Force" do
      expect(Sorcerer.spells).to have("Phantasmal Force")
    end

    it "contains Plane Shift" do
      expect(Sorcerer.spells).to have("Plane Shift")
    end

    it "contains Polymorph" do
      expect(Sorcerer.spells).to have("Polymorph")
    end

    it "contains Power Word Kill" do
      expect(Sorcerer.spells).to have("Power Word Kill")
    end

    it "contains Power Word Stun" do
      expect(Sorcerer.spells).to have("Power Word Stun")
    end

    it "contains Prismatic Spray" do
      expect(Sorcerer.spells).to have("Prismatic Spray")
    end

    it "contains Protection from Energy" do
      expect(Sorcerer.spells).to have("Protection from Energy")
    end

    it "contains Ray of Sickness" do
      expect(Sorcerer.spells).to have("Ray of Sickness")
    end

    it "contains Reverse Gravity" do
      expect(Sorcerer.spells).to have("Reverse Gravity")
    end

    it "contains Scorching Ray" do
      expect(Sorcerer.spells).to have("Scorching Ray")
    end

    it "contains See Invisibility" do
      expect(Sorcerer.spells).to have("See Invisibility")
    end

    it "contains Seeming" do
      expect(Sorcerer.spells).to have("Seeming")
    end

    it "contains Shatter" do
      expect(Sorcerer.spells).to have("Shatter")
    end

    it "contains Shield" do
      expect(Sorcerer.spells).to have("Shield")
    end

    it "contains Silent Image" do
      expect(Sorcerer.spells).to have("Silent Image")
    end

    it "contains Sleep" do
      expect(Sorcerer.spells).to have("Sleep")
    end

    it "contains Sleet Storm" do
      expect(Sorcerer.spells).to have("Sleet Storm")
    end

    it "contains Slow" do
      expect(Sorcerer.spells).to have("Slow")
    end

    it "contains Spider Climb" do
      expect(Sorcerer.spells).to have("Spider Climb")
    end

    it "contains Stinking Cloud" do
      expect(Sorcerer.spells).to have("Stinking Cloud")
    end

    it "contains Stoneskin" do
      expect(Sorcerer.spells).to have("Stoneskin")
    end

    it "contains Suggestion" do
      expect(Sorcerer.spells).to have("Suggestion")
    end

    it "contains Sunbeam" do
      expect(Sorcerer.spells).to have("Sunbeam")
    end

    it "contains Sunburst" do
      expect(Sorcerer.spells).to have("Sunburst")
    end

    it "contains Telekinesis" do
      expect(Sorcerer.spells).to have("Telekinesis")
    end

    it "contains Teleport" do
      expect(Sorcerer.spells).to have("Teleport")
    end

    it "contains Teleportation Circle" do
      expect(Sorcerer.spells).to have("Teleportation Circle")
    end

    it "contains Thunderwave" do
      expect(Sorcerer.spells).to have("Thunderwave")
    end

    it "contains Time Stop" do
      expect(Sorcerer.spells).to have("Time Stop")
    end

    it "contains Tongues" do
      expect(Sorcerer.spells).to have("Tongues")
    end

    it "contains True Seeing" do
      expect(Sorcerer.spells).to have("True Seeing")
    end

    it "contains Wall of Fire" do
      expect(Sorcerer.spells).to have("Wall of Fire")
    end

    it "contains Wall of Stone" do
      expect(Sorcerer.spells).to have("Wall of Stone")
    end

    it "contains Water Breathing" do
      expect(Sorcerer.spells).to have("Water Breathing")
    end

    it "contains Water Walk" do
      expect(Sorcerer.spells).to have("Water Walk")
    end

    it "contains Web" do
      expect(Sorcerer.spells).to have("Web")
    end

    it "contains Wish" do
      expect(Sorcerer.spells).to have("Wish")
    end

    it "contains Witch Bolt" do
      expect(Sorcerer.spells).to have("Witch Bolt")
    end
  end
end

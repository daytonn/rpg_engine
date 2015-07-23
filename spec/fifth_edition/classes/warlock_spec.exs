defmodule D20.FifthEdition.Class.Warlock.Spec do
  use ESpec
  alias D20.FifthEdition.Class.Warlock

  before do: {:ok, character: %{level: 2}}
  let :character, do: __.character

  describe "hit_dice/1" do
    it "returns a count of the character's level and 8 sides" do
      expect(Warlock.hit_dice(character)).to eq(count: character.level, sides: 8)
    end
  end

  describe "starting_copper/0" do
    it "is greater than 3999" do
      expect(Warlock.starting_copper).to be :>, 3999
    end

    it "is less than 16001" do
      expect(Warlock.starting_copper).to be :<, 16001
    end
  end

  describe "cantrips/0" do
    it "contains Blade Ward" do
      expect(Warlock.cantrips).to have("Blade Ward")
    end

    it "contains Chill Touch" do
      expect(Warlock.cantrips).to have("Chill Touch")
    end

    it "contains Eldritch Blast" do
      expect(Warlock.cantrips).to have("Eldritch Blast")
    end

    it "contains Friends" do
      expect(Warlock.cantrips).to have("Friends")
    end

    it "contains Mage Hand" do
      expect(Warlock.cantrips).to have("Mage Hand")
    end

    it "contains Minor Illusion" do
      expect(Warlock.cantrips).to have("Minor Illusion")
    end

    it "contains Poison Spray" do
      expect(Warlock.cantrips).to have("Poison Spray")
    end

    it "contains Prestidigitation" do
      expect(Warlock.cantrips).to have("Prestidigitation")
    end

    it "contains True Strike" do
      expect(Warlock.cantrips).to have("True Strike")
    end
  end

  describe "spells/0" do
    it "contains Arcane Gate" do
      expect(Warlock.spells).to have("Arcane Gate")
    end

    it "contains Armor of Agathys" do
      expect(Warlock.spells).to have("Armor of Agathys")
    end

    it "contains Arms of Hadar" do
      expect(Warlock.spells).to have("Arms of Hadar")
    end

    it "contains Astral Projection" do
      expect(Warlock.spells).to have("Astral Projection")
    end

    it "contains Banishment" do
      expect(Warlock.spells).to have("Banishment")
    end

    it "contains Blight" do
      expect(Warlock.spells).to have("Blight")
    end

    it "contains Charm Person" do
      expect(Warlock.spells).to have("Charm Person")
    end

    it "contains Circle of Death" do
      expect(Warlock.spells).to have("Circle of Death")
    end

    it "contains Cloud of Daggers" do
      expect(Warlock.spells).to have("Cloud of Daggers")
    end

    it "contains Comprehend Languages" do
      expect(Warlock.spells).to have("Comprehend Languages")
    end

    it "contains Conjure Fey" do
      expect(Warlock.spells).to have("Conjure Fey")
    end

    it "contains Contact Other Plane" do
      expect(Warlock.spells).to have("Contact Other Plane")
    end

    it "contains Counterspell" do
      expect(Warlock.spells).to have("Counterspell")
    end

    it "contains Create Undead" do
      expect(Warlock.spells).to have("Create Undead")
    end

    it "contains Crown of Madness" do
      expect(Warlock.spells).to have("Crown of Madness")
    end

    it "contains Darkness" do
      expect(Warlock.spells).to have("Darkness")
    end

    it "contains Demiplane" do
      expect(Warlock.spells).to have("Demiplane")
    end

    it "contains Dimension Door" do
      expect(Warlock.spells).to have("Dimension Door")
    end

    it "contains Dispel Magic" do
      expect(Warlock.spells).to have("Dispel Magic")
    end

    it "contains Dominate Monster" do
      expect(Warlock.spells).to have("Dominate Monster")
    end

    it "contains Dream" do
      expect(Warlock.spells).to have("Dream")
    end

    it "contains Enthrall" do
      expect(Warlock.spells).to have("Enthrall")
    end

    it "contains Etherealness" do
      expect(Warlock.spells).to have("Etherealness")
    end

    it "contains Expeditious Retreat" do
      expect(Warlock.spells).to have("Expeditious Retreat")
    end

    it "contains Eyebite" do
      expect(Warlock.spells).to have("Eyebite")
    end

    it "contains Fear" do
      expect(Warlock.spells).to have("Fear")
    end

    it "contains Feeblemind" do
      expect(Warlock.spells).to have("Feeblemind")
    end

    it "contains Finger of Death" do
      expect(Warlock.spells).to have("Finger of Death")
    end

    it "contains Flesh to Stone" do
      expect(Warlock.spells).to have("Flesh to Stone")
    end

    it "contains Fly" do
      expect(Warlock.spells).to have("Fly")
    end

    it "contains Forcecage" do
      expect(Warlock.spells).to have("Forcecage")
    end

    it "contains Foresight" do
      expect(Warlock.spells).to have("Foresight")
    end

    it "contains Gaseous Form" do
      expect(Warlock.spells).to have("Gaseous Form")
    end

    it "contains Glibness" do
      expect(Warlock.spells).to have("Glibness")
    end

    it "contains Hallucinatory Terrain" do
      expect(Warlock.spells).to have("Hallucinatory Terrain")
    end

    it "contains Hellish Rebuke" do
      expect(Warlock.spells).to have("Hellish Rebuke")
    end

    it "contains Hex" do
      expect(Warlock.spells).to have("Hex")
    end

    it "contains Hold Monster" do
      expect(Warlock.spells).to have("Hold Monster")
    end

    it "contains Hold Person" do
      expect(Warlock.spells).to have("Hold Person")
    end

    it "contains Hunger of Hadar" do
      expect(Warlock.spells).to have("Hunger of Hadar")
    end

    it "contains Hypnotic Pattern" do
      expect(Warlock.spells).to have("Hypnotic Pattern")
    end

    it "contains Illusory Script" do
      expect(Warlock.spells).to have("Illusory Script")
    end

    it "contains Imprisonment" do
      expect(Warlock.spells).to have("Imprisonment")
    end

    it "contains Invisibility" do
      expect(Warlock.spells).to have("Invisibility")
    end

    it "contains Magic Circle" do
      expect(Warlock.spells).to have("Magic Circle")
    end

    it "contains Major Image" do
      expect(Warlock.spells).to have("Major Image")
    end

    it "contains Mass Suggestion" do
      expect(Warlock.spells).to have("Mass Suggestion")
    end

    it "contains Mirror Image" do
      expect(Warlock.spells).to have("Mirror Image")
    end

    it "contains Misty Step" do
      expect(Warlock.spells).to have("Misty Step")
    end

    it "contains Plane Shift" do
      expect(Warlock.spells).to have("Plane Shift")
    end

    it "contains Power Word Kill" do
      expect(Warlock.spells).to have("Power Word Kill")
    end

    it "contains Power Word Stun" do
      expect(Warlock.spells).to have("Power Word Stun")
    end

    it "contains Protection from Evil and Good" do
      expect(Warlock.spells).to have("Protection from Evil and Good")
    end

    it "contains Ray of Enfeeblement" do
      expect(Warlock.spells).to have("Ray of Enfeeblement")
    end

    it "contains Remove Curse" do
      expect(Warlock.spells).to have("Remove Curse")
    end

    it "contains Scrying" do
      expect(Warlock.spells).to have("Scrying")
    end

    it "contains Shatter" do
      expect(Warlock.spells).to have("Shatter")
    end

    it "contains Spider Climb" do
      expect(Warlock.spells).to have("Spider Climb")
    end

    it "contains Suggestion" do
      expect(Warlock.spells).to have("Suggestion")
    end

    it "contains Tongues" do
      expect(Warlock.spells).to have("Tongues")
    end

    it "contains True Polymorph" do
      expect(Warlock.spells).to have("True Polymorph")
    end

    it "contains True Seeing" do
      expect(Warlock.spells).to have("True Seeing")
    end

    it "contains Unseen Servant" do
      expect(Warlock.spells).to have("Unseen Servant")
    end

    it "contains Vampiric Touch" do
      expect(Warlock.spells).to have("Vampiric Touch")
    end

    it "contains Witch Bolt" do
      expect(Warlock.spells).to have("Witch Bolt")
    end
  end
end

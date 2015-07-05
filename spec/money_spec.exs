defmodule D20.Money.Test do
  use ESpec

  describe "cp_to_cp/1" do
    it "returns the copper value given" do
      expect(D20.Money.cp_to_cp(1)).to eq(1)
    end
  end

  describe "sp_to_cp/1" do
    it "returns the sp amount times 10" do
      expect(D20.Money.sp_to_cp(1)).to eq(10)
    end
  end

  describe "ep_to_cp/1" do
    it "returns the ep amount times 50" do
      expect(D20.Money.ep_to_cp(1)).to eq(50)
    end
  end

  describe "gp_to_cp/1" do
    it "returns the gp amount times 100" do
      expect(D20.Money.gp_to_cp(1)).to eq(100)
    end
  end

  describe "pp_to_cp/1" do
    it "returns the pp amount times 1000" do
      expect(D20.Money.pp_to_cp(1)).to eq(1000)
    end
  end

  describe "silver/1" do
    context "given 0" do
      it "returns 0" do
        expect(D20.Money.silver(0)).to eq(0)
      end
    end

    context "given an amount greater than 0" do
      it "returns the amount divided by 10" do
        expect(D20.Money.silver(10)).to eq(1)
      end

      it "returns floats for indivisible ammounts" do
        expect(D20.Money.silver(13)).to eq(1.3)
      end
    end
  end

  describe "electrum/1" do
    context "given 0" do
      it "returns 0" do
        expect(D20.Money.electrum(0)).to eq(0)
      end
    end

    context "given an amount greater than 0" do
      it "returns the amount divided by 50" do
        expect(D20.Money.electrum(50)).to eq(1)
      end

      it "returns floats for indivisible ammounts" do
        expect(D20.Money.electrum(75)).to eq(1.5)
      end
    end
  end

  describe "gold/1" do
    context "given 0" do
      it "returns 0" do
        expect(D20.Money.gold(0)).to eq(0)
      end
    end

    context "given an amount greater than 0" do
      it "returns the amount divided by 100" do
        expect(D20.Money.gold(100)).to eq(1)
      end

      it "returns floats for indivisible ammounts" do
        expect(D20.Money.gold(150)).to eq(1.5)
      end
    end
  end

  describe "platinum/1" do
    context "given 0" do
      it "returns 0" do
        expect(D20.Money.platinum(0)).to eq(0)
      end
    end

    context "given an amount greater than 0" do
      it "returns the amount divided by 1000" do
        expect(D20.Money.platinum(1000)).to eq(1)
      end

      it "returns floats for indivisible ammounts" do
        expect(D20.Money.platinum(1500)).to eq(1.5)
      end
    end
  end

  describe "change/1" do
    it "it returns all zeros given 0" do
      expect(D20.Money.change(0)).to eq([pp: 0, gp: 0, ep: 0, sp: 0, cp: 0])
    end

    it "it splits the copper into the least amount of coins" do
      expect(D20.Money.change(1000)).to eq([pp: 1, gp: 0, ep: 0, sp: 0, cp: 0])
      expect(D20.Money.change(1100)).to eq([pp: 1, gp: 1, ep: 0, sp: 0, cp: 0])
      expect(D20.Money.change(1050)).to eq([pp: 1, gp: 0, ep: 1, sp: 0, cp: 0])
      expect(D20.Money.change(1010)).to eq([pp: 1, gp: 0, ep: 0, sp: 1, cp: 0])
      expect(D20.Money.change(1009)).to eq([pp: 1, gp: 0, ep: 0, sp: 0, cp: 9])
      expect(D20.Money.change(1161)).to eq([pp: 1, gp: 1, ep: 1, sp: 1, cp: 1])
    end
  end

  describe "to_string/1" do
    it "returns the change list as a string" do
      expect(D20.Money.to_string(D20.Money.change(1234))).to eq("1pp, 2gp, 3sp, 4cp")
      expect(D20.Money.to_string(D20.Money.change(1000))).to eq("1pp")
      expect(D20.Money.to_string(D20.Money.change(1100))).to eq("1pp, 1gp")
      expect(D20.Money.to_string(D20.Money.change(1050))).to eq("1pp, 1ep")
      expect(D20.Money.to_string(D20.Money.change(1010))).to eq("1pp, 1sp")
      expect(D20.Money.to_string(D20.Money.change(1009))).to eq("1pp, 9cp")
      expect(D20.Money.to_string(D20.Money.change(1161))).to eq("1pp, 1gp, 1ep, 1sp, 1cp")
    end
  end
end

defmodule D20.Money.Test do
  use ExSpec, async: true

  describe "cp_to_cp/1" do
    it "returns the copper value given" do
      assert D20.Money.cp_to_cp(1) == 1
    end
  end

  describe "sp_to_cp/1" do
    it "returns the sp amount times 10" do
      assert D20.Money.sp_to_cp(1) == 10
    end
  end

  describe "ep_to_cp/1" do
    it "returns the ep amount times 50" do
      assert D20.Money.ep_to_cp(1) == 50
    end
  end

  describe "gp_to_cp/1" do
    it "returns the gp amount times 100" do
      assert D20.Money.gp_to_cp(1) == 100
    end
  end

  describe "pp_to_cp/1" do
    it "returns the pp amount times 1000" do
      assert D20.Money.pp_to_cp(1) == 1000
    end
  end

  describe "silver/1" do
    context "given 0" do
      it "returns 0" do
        assert D20.Money.silver(0) == 0
      end
    end

    context "given an amount greater than 0" do
      it "returns the amount divided by 10" do
        assert D20.Money.silver(10) == 1
      end

      it "returns floats for indivisible ammounts" do
        assert D20.Money.silver(13) == 1.3
      end
    end
  end

  describe "electrum/1" do
    context "given 0" do
      it "returns 0" do
        assert D20.Money.electrum(0) == 0
      end
    end

    context "given an amount greater than 0" do
      it "returns the amount divided by 50" do
        assert D20.Money.electrum(50) == 1
      end

      it "returns floats for indivisible ammounts" do
        assert D20.Money.electrum(75) == 1.5
      end
    end
  end

  describe "gold/1" do
    context "given 0" do
      it "returns 0" do
        assert D20.Money.gold(0) == 0
      end
    end

    context "given an amount greater than 0" do
      it "returns the amount divided by 100" do
        assert D20.Money.gold(100) == 1
      end

      it "returns floats for indivisible ammounts" do
        assert D20.Money.gold(150) == 1.5
      end
    end
  end

  describe "platinum/1" do
    context "given 0" do
      it "returns 0" do
        assert D20.Money.platinum(0) == 0
      end
    end

    context "given an amount greater than 0" do
      it "returns the amount divided by 1000" do
        assert D20.Money.platinum(1000) == 1
      end

      it "returns floats for indivisible ammounts" do
        assert D20.Money.platinum(1500) == 1.5
      end
    end
  end

  describe "change/1" do
    it "it returns all zeros given 0" do
      assert D20.Money.change(0) == [pp: 0, gp: 0, ep: 0, sp: 0, cp: 0]
    end

    it "it splits the copper into the least amount of coins" do
      assert D20.Money.change(1000) == [pp: 1, gp: 0, ep: 0, sp: 0, cp: 0]
      assert D20.Money.change(1100) == [pp: 1, gp: 1, ep: 0, sp: 0, cp: 0]
      assert D20.Money.change(1050) == [pp: 1, gp: 0, ep: 1, sp: 0, cp: 0]
      assert D20.Money.change(1010) == [pp: 1, gp: 0, ep: 0, sp: 1, cp: 0]
      assert D20.Money.change(1009) == [pp: 1, gp: 0, ep: 0, sp: 0, cp: 9]
      assert D20.Money.change(1161) == [pp: 1, gp: 1, ep: 1, sp: 1, cp: 1]
    end
  end

  describe "to_string/1" do
    it "returns the change list as a string" do
      change = D20.Money.change(1234)
      assert D20.Money.to_string(change) == "1pp, 2gp, 3sp, 4cp"
    end
  end
end

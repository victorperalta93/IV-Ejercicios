require 'euclides'

RSpec.describe "#mcd" do
    it "should calculate the mcd of the given numbers" do
        res = mcd(1032,180)
        expect(res).to eq 12
    end

    it "should work if the first number is bigger than the second one" do
        res = mcd(180,1032)
        expect(res).to eq 12
    end

    it "should fail if x or y are not integers" do
        res = mcd("a","b")
        expect(res). to eq "arguments must be integers"
    end
end
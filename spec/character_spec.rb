require "character"
require 'rspec'

describe "Char" do 
    let(:ike) { Character.new("Ike", 0) }


    describe "#initialize" do 
        it "sets the name to an input string" do
        expect(ike.name).to eq("Ike")
        end

        it "sets the allegiance to an input integer" do
        expect(ike.allegiance).to eq(0)
        end
    end

end
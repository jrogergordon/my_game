require "character"
require 'rspec'

describe "Char" do 
    let(:ike) { Char.new("Ike", "blue") }


    describe "#initialize" do 
        it "sets the name to an input string" do
        expect(ike.name).to eq("Ike")
        end

        it "sets the allegiance to an input string" do
            expect(ike.allegiance).to eq("blue")
        end
    end

end
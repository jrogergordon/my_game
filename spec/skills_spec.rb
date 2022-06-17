require "skills"

describe "Skills" do
    subject(:ike) { Char.new("Ike", 0) }

    describe "#load_skills" do
        it "loads skills when skills aren't given" do
            ike.load_skills()
            expect(ike.skills).to eq({"def"=>5.0, "health"=>5.0, "str"=>5.0})
        end

        it "loads skills when skills are given" do
            ike_skills = [20, 13, 4]
            ike.load_skills(ike_skills)
            expect(ike.skills).to eq({"health"=> 20, "def" => 13, "str"=> 4})
        end
    end

end
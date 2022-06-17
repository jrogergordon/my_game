require_relative "skills"
class Char
    include Skills


    def initialize(name = "Null", allegiance = "red")
        @name = name
        @allegiance = allegiance
    end

    def symbol
        "\u2694"
    end

    attr_reader :name, :symbol, :allegiance, :skills

end

#skills = ["Null"], skill_pct = ["Null"], items = ["Null"], exp = 0, allegiance = "red"
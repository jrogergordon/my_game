class Char
    def initialize(name = "Null", allegiance = "red")
        @name = name
        @allegiance = allegiance
    end

    attr_reader :name, :allegiance, :symbol

    def symbol
        ""
    end


end

#skills = ["Null"], skill_pct = ["Null"], items = ["Null"], exp = 0, allegiance = "red"
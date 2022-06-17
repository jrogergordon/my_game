module Skills

    def load_skills(skills = nil, skill_pct = 0.5)
        if skills == nil
            @skills = {
            "health" => skill_pct * 10,
            "def" => skill_pct * 10,
            "str" => skill_pct * 10,
            }
        else
            @skills = {
            "health" => skills[0],
            "def" => skills[1],
            "str" => skills[2],
            }
        end
    end
end
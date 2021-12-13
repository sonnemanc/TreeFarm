trees_list = {
    "Balsam Fir" => {
        :height => "6 ft",
        :price => 65.95,
    },
    "Fraser Fir" => {
        :height => "6 ft",
        :price => 65.95,
    },
    "Noble Fir" => {
        :height => "7 ft",
        :price => 75.95,
    },
    "Douglas Fir" => {
        :height => "7 ft",
        :price => 75.95,
    },
    "Grand Fir" => {
        :height => "8 ft",
        :price => 85.95,
    },
}

trees_list.each do |name, tree_hash|
    t = Tree.new
    t.name = name
    tree_hash.each do |attribute, value|
        t[attribute] = value
    end
    t.save
end

light_list = {
    "Red" => {},
    "Green" => {},
    "Blue" => {},
    "White" => {}
}

light_list.each do |color, light_hash|
    l = Light.new
    l.color = color
    l.save
end
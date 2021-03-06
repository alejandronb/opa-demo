package example

default allow = false                               # unless otherwise defined, allow is false

allow = true {                                      # allow is true if...
    count(violation) == 0                           # there are zero violations.
}


violation[hero.id] {                              # a hero is in the violation set if...
    some hero
    dc_hero[hero]                                 # it exists in the 'dc_universe' set and...
    hero.powers[_] == "funny"                     # it contains the funny powers.
}


dc_hero[hero] {                             # a hero exists in the dc_universe set if...
    some i
    hero := input.heroes[_]                      # it exists in the input.heroes collection and...
    hero.companies[_] == input.companies[i].id   # it references a company in the input.companies collection and...
    input.companies[i].company == "dc"           # the company is dc
}
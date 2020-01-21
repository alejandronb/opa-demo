package example

deny[reason] {
  some hero
  input_heroes[hero]
  not startswith(hero.id, "super")
  reason := sprintf("If your name doesnt start with super, you are not super %q", [hero.id])
}


input_heroes[hero] {
  hero := input.heroes[_]
}
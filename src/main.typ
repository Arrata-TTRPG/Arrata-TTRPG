// For formatting rules
#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: book.with(
  title: "Arrata",
  author: "Kaleb Burris",
  version: "CURRENT_VERSION",
  logo: "rat.png",
)

#counter(page).update(1)

#set page(
  numbering: "1",
)

#include("sections/foreword.typ")

#include("sections/introduction.typ")

#include("sections/dice.typ")

#include("sections/stats.typ")

#include("sections/quirks.typ")

#include("sections/characters.typ")

#include("sections/combat.typ")

#include("sections/credits.typ")
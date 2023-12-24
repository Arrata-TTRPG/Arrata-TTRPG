// For formatting rules
#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  authors: (
    "Kaleb Burris",
  ),
  logo: "rat.png"
)

#set page(numbering: "1")
#counter(page).update(1)

#include("sections/introduction.typ")

#include("sections/dice.typ")

#include("sections/stats.typ")

#include("sections/quirks.typ")

#include("sections/characters.typ")

#include("sections/credits.typ")